# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\zybo_Adder_1\test\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\zybo_Adder_1\test\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {test}\
-hw {D:\Zybo20_Adder\project_1\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {D:/zybo_Adder_1}

platform write
platform generate -domains 
platform active {test}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
platform active {test}
bsp reload
bsp reload
platform active {test}
bsp reload
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_domain}
bsp reload
