# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Vitis_IDE_Projecten\ToF_SOC_SEnsor\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Vitis_IDE_Projecten\ToF_SOC_SEnsor\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ToF_SOC_SEnsor}\
-hw {C:\SoC_Projecten\ToF_Sensor\ToF_SOC_SEnsor.xsa}\
-out {C:/Vitis_IDE_Projecten}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {ToF_SOC_SEnsor}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
catch {platform remove SOC_ToF_Snsor}
platform generate
bsp reload
platform generate -domains 
