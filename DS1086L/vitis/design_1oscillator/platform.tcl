# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\boghe\Documents_pc\systemOnChip\DS1086L\vitis\design_1oscillator\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\boghe\Documents_pc\systemOnChip\DS1086L\vitis\design_1oscillator\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1oscillator}\
-hw {C:\Users\boghe\Documents_pc\systemOnChip\DS1086L\project_1\design_1oscillator.xsa}\
-out {C:/Users/boghe/Documents_pc/systemOnChip/DS1086L/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1oscillator}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
