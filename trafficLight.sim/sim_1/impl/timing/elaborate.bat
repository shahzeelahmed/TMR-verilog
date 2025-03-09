@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 7a8e83f47fe24558a70c78115bfb86b1 -m64 --debug typical --relax --mt 2 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot tb_spi_system_led_single_reset_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.tb_spi_system_led_single_reset xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
