set_host_options -max_cores 1
#======================================================
#  Global Parameters
#======================================================
set DESIGN  "CONV"
set VERSION "v1"
set cycle  9.0
set t_in   [expr $cycle/2]
set t_out  [expr $cycle/2]
set CLOCK_NAME  "clk"

if {[info exists env(ROOT_PATH)]} {
    puts "ROOT_PATH is: $env(ROOT_PATH)"
} else {
    puts "ROOT_PATH is not set"
}

#======================================================
#  Read RTL Code
#======================================================
analyze -format sverilog "$ROOT_PATH/RTL/CONV.sv"
elaborate $DESIGN

current_design [get_designs CONV]
link

#======================================================
#  Set Design Constraints
#======================================================
create_clock -name $CLOCK_NAME -period $cycle [get_ports  $CLOCK_NAME]
set_fix_hold                        [get_clocks $CLOCK_NAME]
set_dont_touch_network              [get_clocks $CLOCK_NAME]
set_ideal_network    -no_propagate  [get_ports  $CLOCK_NAME]
# clk_skew: 0.1 / 0.2 / 0.3-0.5 - 作業design / Paper Design / 業界Design建議的數值
set_clock_uncertainty  0.1          [get_clocks $CLOCK_NAME]
# clk_latency: 1.0 / 2.0 / 3.0 -- 作業design / Paper Design / 業界Design建議的數值
set_clock_latency      1.0          [get_clocks $CLOCK_NAME]
#set_input_transition   0.5          [all_inputs]

set_clock_transition   0.1          [all_clocks]

set_input_delay  -max $t_in  -clock  $CLOCK_NAME [remove_from_collection [all_inputs] [get_ports $CLOCK_NAME]]
set_input_delay  -min 0      -clock  $CLOCK_NAME [remove_from_collection [all_inputs] [get_ports $CLOCK_NAME]]
set_output_delay -max $t_out -clock  $CLOCK_NAME [all_outputs]
set_output_delay -min 0      -clock  $CLOCK_NAME [all_outputs]

#set_dont_touch [get_cell ipad*]
#set_dont_touch [get_cell opad*]

set_operating_conditions -max WC1D62VCOM -max_library UDVS_u018mmwc162v  -min BC1D98VCOM -min_library UDVS_u018mmbc198v
set_drive       1          [all_inputs]
# set_load   1 / 5~10 / 40 - PCB / 業界Design建議的數值 / TSRI測試機台 有I/O Pad的情況
# set_load 0.1               Logic  Cell的pin腳                      無I/O Pad合成Core Circuit的情況
set_load        1          [all_outputs]

set_wire_load_mode top
set_wire_load_model -name udp8K_Conservative -library UDVS_u018mmwc162v

#======================================================
#  Design Rule Constraints
#======================================================
set_max_fanout 20 [all_inputs]

#======================================================
#  Compile & Optimization
#======================================================
#  一次進行面積優化
current_design $DESIGN
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
set case_analysis_with_logic_constants true

#  面積最佳化
set_max_area 0
check_design

#  Compile with Logic Mapping Optimization
#compile -boundary_optimization

#  SAIF Power Analysis & Optimization
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
read_saif -input CONV_syn.saif -instance_name testfixture
set_dynamic_optimization true
set_leakage_optimization true

#  -boundary_optimization後進一步做優化
#compile_ultra -inc -area -no_autoungroup
compile_ultra -area -no_autoungroup

#  二次進行微調優化(謹慎使用)
#optimize_registers

#  優化全部做完後再將多餘的"未連接線路"去除
#remove_unconnected_ports -blast_buses [get_cells * -hier]

#======================================================
#  Change Naming Rule
#======================================================
current_design [get_designs $DESIGN]
set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*" "cell"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule

#======================================================
#  Output Reports
#======================================================
set verilogout_no_tri true
report_timing -delay min -max_path 5 > Report/$DESIGN\_$VERSION\.timing_min
report_timing -delay max -max_path 5 > Report/$DESIGN\_$VERSION\.timing_max
report_area -hierarchy               > Report/$DESIGN\_$VERSION\.area_rpt
report_power                         > Report/$DESIGN\_$VERSION\.power_rpt
report_design                        > Report/$DESIGN\_$VERSION\.design_rpt
report_resource   -hierarchy         > Report/$DESIGN\_$VERSION\.resource_rpt
report_constraint -all_violators     > Report/$DESIGN\_$VERSION\.constraint
report_qor                           > Report/$DESIGN\_$VERSION\.qor

#======================================================
#  Output Results
#======================================================
set verilogout_higher_designs_first true
write   -format   ddc     -hierarchy    -output   ./Netlist/$DESIGN\_syn_$VERSION\.ddc
write   -format   verilog -hierarchy    -output   ./Netlist/$DESIGN\_syn_$VERSION\.v
write_sdf  -version 2.1 -load_delay net           ./Netlist/$DESIGN\_syn_$VERSION\.sdf
write_sdc  -version 1.8                           ./Netlist/$DESIGN\_syn_$VERSION\.sdc








