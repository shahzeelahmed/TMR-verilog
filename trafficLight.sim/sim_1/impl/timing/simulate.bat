@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim tb_spi_system_led_single_reset_time_impl -key {Post-Implementation:sim_1:Timing:tb_spi_system_led_single_reset} -tclbatch tb_spi_system_led_single_reset.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
