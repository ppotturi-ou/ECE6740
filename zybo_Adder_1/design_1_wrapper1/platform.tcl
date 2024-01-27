# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\zybo_Adder_1\design_1_wrapper1\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\zybo_Adder_1\design_1_wrapper1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper1}\
-hw {D:\zybo_Adder_1\project_1\design_1_wrapper1.xsa}\
-out {D:/zybo_Adder_1}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper1}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform config -updatehw {D:/zybo_Adder_1/project_1/design_1_wrapper1.xsa}
platform clean
domain active {zynq_fsbl}
bsp reload
bsp write
platform clean
platform active {design_1_wrapper1}
bsp reload
bsp reload
catch {platform remove design_1_wrapper1}
