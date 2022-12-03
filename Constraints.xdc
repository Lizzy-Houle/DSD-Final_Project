#clock pin
set_property PACKAGE_PIN E3 [get_ports {Clk}];
set_property IOSTANDARD LVCMOS33 [get_ports {Clk}];

#create hardware clock
#create_clock -add -name Clk -period 10.00 -waveform {0 5] [get_ports {Clk}]

#Digits
set_property PACKAGE_PIN J14 [get_ports {Digits[3]}]; #J14
set_property IOSTANDARD LVCMOS33 [get_ports {Digits[3]}]

set_property PACKAGE_PIN T9 [get_ports {Digits[2]}]; #T9
set_property IOSTANDARD LVCMOS33 [get_ports {Digits[2]}]

set_property PACKAGE_PIN J18 [get_ports {Digits[1]}]; #J18
set_property IOSTANDARD LVCMOS33 [get_ports {Digits[1]}]

set_property PACKAGE_PIN J17 [get_ports {Digits[0]}]; #J17
set_property IOSTANDARD LVCMOS33 [get_ports {Digits[0]}]

#Segments
set_property PACKAGE_PIN L18 [get_ports {Segments[6]}]; #L18
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[6]}]

set_property PACKAGE_PIN T11 [get_ports {Segments[5]}]; #T11
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[5]}]

set_property PACKAGE_PIN P15 [get_ports {Segments[4]}]; #P15
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[4]}]

set_property PACKAGE_PIN K13 [get_ports {Segments[3]}]; #K13
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[3]}]

set_property PACKAGE_PIN K16 [get_ports {Segments[2]}]; #K16
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[2]}]

set_property PACKAGE_PIN R10 [get_ports {Segments[1]}]; #R10
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[1]}]

set_property PACKAGE_PIN T10 [get_ports {Segments[0]}]; #T10
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[0]}]

# Switches 15-12
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {Switch[15]}];
set_property -dict {PACKAGE_PIN U11 IOSTANDARD LVCMOS33} [get_ports {Switch[14]}];
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {Switch[13]}];
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS33} [get_ports {Switch[12]}];

# Switches 11-8
set_property -dict {PACKAGE_PIN T13 IOSTANDARD LVCMOS33} [get_ports {Switch[11]}];
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {Switch[10]}];
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {Switch[9]}];
set_property -dict {PACKAGE_PIN T8 IOSTANDARD LVCMOS33} [get_ports {Switch[8]}];

# Switches 7-4
set_property -dict {PACKAGE_PIN R13 IOSTANDARD LVCMOS33} [get_ports {Switch[7]}];
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {Switch[6]}];
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {Switch[5]}];
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {Switch[4]}];

# Switches 3-0
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports {Switch[3]}];
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports {Switch[2]}];
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {Switch[1]}];
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {Switch[0]}];


# Start
set_property PACKAGE_PIN N17 [get_ports {Start}]
set_property IOSTANDARD LVCMOS33 [get_ports {Start}]

# LEDs
set_property PACKAGE_PIN V11 [get_ports {LED[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[15]}]

set_property PACKAGE_PIN V12 [get_ports {LED[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[14]}]

set_property PACKAGE_PIN V14 [get_ports {LED[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[13]}]

set_property PACKAGE_PIN V15 [get_ports {LED[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[12]}]

set_property PACKAGE_PIN T16 [get_ports {LED[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[11]}]

set_property PACKAGE_PIN U14 [get_ports {LED[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[10]}]

set_property PACKAGE_PIN T15 [get_ports {LED[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[9]}]

set_property PACKAGE_PIN V16 [get_ports {LED[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[8]}]

set_property PACKAGE_PIN U16 [get_ports {LED[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]

set_property PACKAGE_PIN U17 [get_ports {LED[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]

set_property PACKAGE_PIN V17 [get_ports {LED[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]

set_property PACKAGE_PIN R18 [get_ports {LED[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}]

set_property PACKAGE_PIN N14 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]

set_property PACKAGE_PIN J13 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]

set_property PACKAGE_PIN K15 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]

set_property PACKAGE_PIN H17 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
