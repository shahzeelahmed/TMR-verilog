## ==== Clock inputs (CLK) ====
et_property PACKAGE_PIN C9 [get_ports CLK_50MHZ]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_50MHZ]
create_clock -period 20.0 [get_ports CLK_50MHZ]

## ===== BTN NORTH =====
set_property PACKAGE_PIN V4 [get_ports BTN_NORTH]
set_property IOSTANDARD LVTTL [get_ports BTN_NORTH]
set_property PULLDOWN true [get_ports BTN_NORTH]

## ==== Slide Switches (SW) ====
set_property PACKAGE_PIN L13 [get_ports {SWITCHES[0]}]
set_property IOSTANDARD LVTTL [get_ports {SWITCHES[0]}]
set_property PULLUP true [get_ports {SWITCHES[0]}]

set_property PACKAGE_PIN L14 [get_ports {SWITCHES[1]}]
set_property IOSTANDARD LVTTL [get_ports {SWITCHES[1]}]
set_property PULLUP true [get_ports {SWITCHES[1]}]

set_property PACKAGE_PIN H18 [get_ports {SWITCHES[2]}]
set_property IOSTANDARD LVTTL [get_ports {SWITCHES[2]}]
set_property PULLUP true [get_ports {SWITCHES[2]}]

set_property PACKAGE_PIN N17 [get_ports {SWITCHES[3]}]
set_property IOSTANDARD LVTTL [get_ports {SWITCHES[3]}]
set_property PULLUP true [get_ports {SWITCHES[3]}]

## ==== LEDs ====
set_property PACKAGE_PIN F12 [get_ports {LEDS[0]}]
set_property IOSTANDARD LVTTL [get_ports {LEDS[0]}]
set_property SLEW SLOW [get_ports {LEDS[0]}]
set_property DRIVE 8 [get_ports {LEDS[0]}]

set_property PACKAGE_PIN E12 [get_ports {LEDS[1]}]
set_property IOSTANDARD LVTTL [get_ports {LEDS[1]}]
set_property SLEW SLOW [get_ports {LEDS[1]}]
set_property DRIVE 8 [get_ports {LEDS[1]}]

set_property PACKAGE_PIN E11 [get_ports {LEDS[2]}]
set_property IOSTANDARD LVTTL [get_ports {LEDS[2]}]
set_property SLEW SLOW [get_ports {LEDS[2]}]
set_property DRIVE 8 [get_ports {LEDS[2]}]

set_property PACKAGE_PIN F11 [get_ports {LEDS[3]}]
set_property IOSTANDARD LVTTL [get_ports {LEDS[3]}]
set_property SLEW SLOW [get_ports {LEDS[3]}]
set_property DRIVE 8 [get_ports {LEDS[3]}]

set_property PACKAGE_PIN C11 [get_ports {LEDS[4]}]
set_property IOSTANDARD LVTTL [get_ports {LEDS[4]}]
set_property SLEW SLOW [get_ports {LEDS[4]}]
set_property DRIVE 8 [get_ports {LEDS[4]}]

set_property PACKAGE_PIN D11 [get_ports {LEDS[5]}]
set_property IOSTANDARD LVTTL [get_ports {LEDS[5]}]
set_property SLEW SLOW [get_ports {LEDS[5]}]
set_property DRIVE 8 [get_ports {LEDS[5]}]

set_property PACKAGE_PIN E9 [get_ports {LEDS[6]}]
set_property IOSTANDARD LVTTL [get_ports {LEDS[6]}]
set_property SLEW SLOW [get_ports {LEDS[6]}]
set_property DRIVE 8 [get_ports {LEDS[6]}]

set_property PACKAGE_PIN F9 [get_ports {LEDS[7]}]
set_property IOSTANDARD LVTTL [get_ports {LEDS[7]}]
set_property SLEW SLOW [get_ports {LEDS[7]}]
set_property DRIVE 8 [get_ports {LEDS[7]}]