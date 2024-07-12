# Vivado does not support old UCF syntax
# must use XDC syntax

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 }   [ get_ports { x } ] ;
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 }   [ get_ports { y } ] ;
set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 }   [ get_ports { reset } ] ;
set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 }   [ get_ports { clk } ] ;

set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[0] } ] ;
set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[1] } ] ;
set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[2] } ] ;
set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 }   [ get_ports { max_occupancy[3] } ] ;

set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 }   [ get_ports { current_occupancy[0] } ] ;
set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 }   [ get_ports { current_occupancy[1] } ] ;
set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33 }   [ get_ports { current_occupancy[2] } ] ;
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 }   [ get_ports { current_occupancy[3] } ] ;

set_property -dict { PACKAGE_PIN U14 IOSTANDARD LVCMOS33 }   [ get_ports { z } ] ;
