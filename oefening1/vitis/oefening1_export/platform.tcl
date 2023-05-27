# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Brent\Desktop\PXLocal\SOC\oefening1\vitis\oefening1_export\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Brent\Desktop\PXLocal\SOC\oefening1\vitis\oefening1_export\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {oefening1_export}\
-hw {C:\Users\Brent\Desktop\PXLocal\SOC\oefening1\SoC_FSM_ROM_Neopixel\oefening1_export.xsa}\
-out {C:/Users/Brent/Desktop/PXLocal/SOC/oefening1/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {oefening1_export}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
bsp reload
platform generate -domains 
