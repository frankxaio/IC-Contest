#======================================================
# SECTION (A) Global Parameters
#======================================================
set DESIGN "huffman" ;#! Modify

if {[info exists env(ROOT_PATH)]} {
    puts "ROOT_PATH is: $env(ROOT_PATH)"
    set ROOT_PATH $env(ROOT_PATH)
} else {
    puts "ROOT_PATH is not set"
}

# Specify temporary folder
set temp_dir "work"
file mkdir $temp_dir

# Define temporary design library
define_design_lib WORK -path "./work"

#!SECTION


#======================================================
# SECTION (B) Read RTL Code
#======================================================

set hdlin_auto_save_templates TRUE
analyze -format sverilog "$ROOT_PATH/01_RTL/$DESIGN\.sv"

elaborate $DESIGN
current_design $DESIGN
link

#!SECTION

#======================================================
# SECTION (C) Global Setting
#======================================================
#!SECTION

#======================================================
# SECTION (D) Set Design Constraints
#======================================================

source -echo -verbose $DESIGN\.sdc

#======================================================
# SECTION - (E) Optimization
#======================================================
set case_analysis_with_logic_constants true
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -inc


#======================================================
# SECTION (F) Output Reports
#======================================================
report_design                        > Report/$DESIGN\.design
report_resource   -hierarchy         > Report/$DESIGN\.resource
report_timing -max_paths 3           > Report/$DESIGN\.timing
report_area -hierarchy               > Report/$DESIGN\.area
report_power                         > Report/$DESIGN\.power
report_clock                         > Report/$DESIGN\.clock
report_port                          > Report/$DESIGN\.port
report_constraint -all_violators     > Report/$DESIGN\.constraint
report_qor                           > Report/$DESIGN\.qor
report_clock_gating                  > Report/$DESIGN\.gating
#!SECTION


#======================================================
# SECTION (G) Change Naming Rule
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
#!SECTION


#======================================================
#SECTION (H) Output Results
#======================================================
set verilogout_higher_designs_first true
write   -format   verilog -hierarchy    -output           ./Netlist/$DESIGN\_syn.v
write   -format   ddc     -hierarchy    -output           ./Netlist/$DESIGN\_syn.ddc
write_sdf  -version 3.0 -context verilog -load_delay cell ./Netlist/$DESIGN\_syn.sdf -significant_digits 6
write_sdc                                                 ./Netlist/$DESIGN\_syn.sdc
#!SECTION


#======================================================
# SECTION (I) Finish and Quit
#======================================================

report_area
report_timing
check_design
exit

#!SECTION
