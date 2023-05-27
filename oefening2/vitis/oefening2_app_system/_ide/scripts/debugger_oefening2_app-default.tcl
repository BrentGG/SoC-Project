# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\Brent\Desktop\PXLocal\SOC\oefening2\vitis\oefening2_app_system\_ide\scripts\debugger_oefening2_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\Brent\Desktop\PXLocal\SOC\oefening2\vitis\oefening2_app_system\_ide\scripts\debugger_oefening2_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-23727093-0"}
fpga -file C:/Users/Brent/Desktop/PXLocal/SOC/oefening2/vitis/oefening2_app/_ide/bitstream/oefening2_export.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/Brent/Desktop/PXLocal/SOC/oefening2/vitis/oefening2_export/export/oefening2_export/hw/oefening2_export.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/Brent/Desktop/PXLocal/SOC/oefening2/vitis/oefening2_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/Brent/Desktop/PXLocal/SOC/oefening2/vitis/oefening2_app/Debug/oefening2_app.elf
configparams force-mem-access 0
bpadd -addr &main
