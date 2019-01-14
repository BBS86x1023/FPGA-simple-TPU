
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name basic_uart -dir "C:/Users/BBS/Desktop/ISE_Programe/FPGA_ZYNQ/basic_uart/planAhead_run_2" -part xc7z020clg484-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "constraints.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {basic_uart.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {t_serial.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top t_serial $srcset
add_files [list {constraints.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7z020clg484-3
