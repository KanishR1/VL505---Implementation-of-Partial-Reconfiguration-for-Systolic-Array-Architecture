connect -url tcp:127.0.0.1:3121
source /home/jay/Kanish/pr_version_5/pr_version_5.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AA5818"} -index 0
loadhw -hw /home/jay/Kanish/pr_version_5/pr_version_5.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AA5818"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248AA5818"} -index 0
dow /home/jay/Kanish/pr_version_5/pr_version_5.sdk/send_data/Debug/send_data.elf
configparams force-mem-access 0
bpadd -addr &main
