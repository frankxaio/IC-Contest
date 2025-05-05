# Set design name variable
set design_name "CONV"

# Read design file
read_file -format sverilog ./${design_name}.sv
current_design $design_name
link

# Setting Clock Constraints
source -echo -verbose ${design_name}.sdc

# Synthesis all design
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -incremental

# Write outputs
write -format ddc     -hierarchy -output "${design_name}_syn.ddc"
write_sdf "${design_name}_syn.sdf"
write_file -format verilog -hierarchy -output "${design_name}_syn.v"

# Reports
report_area > "${design_name}_area.log"
report_timing > "${design_name}_timing.log"
report_qor   > "${design_name}_syn.qor"
