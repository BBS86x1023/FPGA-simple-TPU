
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name basic_uart -dir "C:/Users/BBS/Desktop/ISE_Programe/FPGA_ZYNQ/basic_uart/planAhead_run_1" -part xc7z020clg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/BBS/Desktop/ISE_Programe/FPGA_ZYNQ/basic_uart/t_serial.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/BBS/Desktop/ISE_Programe/FPGA_ZYNQ/basic_uart} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "constraints.ucf" [current_fileset -constrset]
add_files [list {constraints.ucf}] -fileset [get_property constrset [current_run]]
link_design
