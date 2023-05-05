# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\SoC\Pmod_ToF\Vitis\Pmod_ToF\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\SoC\Pmod_ToF\Vitis\Pmod_ToF\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Pmod_ToF} -hw {C:\SoC\Pmod_ToF\Pmod_ToF.xsa} -out {C:/SoC/Pmod_ToF/Vitis}
platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {Pmod_ToF}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
bsp reload
platform generate -domains 
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
platform active {Pmod_ToF}
bsp reload
