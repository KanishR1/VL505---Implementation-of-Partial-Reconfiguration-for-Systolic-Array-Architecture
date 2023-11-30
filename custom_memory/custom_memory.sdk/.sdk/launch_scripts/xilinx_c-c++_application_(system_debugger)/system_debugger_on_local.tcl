connect -url tcp:127.0.0.1:3121
source /home/jay/Kanish/custom_memory/custom_memory.sdk/custom_mem_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AA5818"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248AA5818" && level==0} -index 1
fpga -file /home/jay/Kanish/custom_memory/custom_memory.sdk/custom_mem_wrapper_hw_platform_0/custom_mem_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AA5818"} -index 0
loadhw -hw /home/jay/Kanish/custom_memory/custom_memory.sdk/custom_mem_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AA5818"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248AA5818"} -index 0
dow /home/jay/Kanish/custom_memory/custom_memory.sdk/custom_mem_test/Debug/custom_mem_test.elf
configparams force-mem-access 0
bpadd -addr &main
