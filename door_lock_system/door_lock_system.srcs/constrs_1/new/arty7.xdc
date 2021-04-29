## This file is a general .xdc for the Arty A7-100 Rev. D
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports CLK100MHZ]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK100MHZ]

# Pmod JA
set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports {keyboard_rows[0]}]
set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports {keyboard_rows[1]}]
set_property -dict {PACKAGE_PIN A11 IOSTANDARD LVCMOS33} [get_ports {keyboard_rows[2]}]
set_property -dict {PACKAGE_PIN D12 IOSTANDARD LVCMOS33} [get_ports {keyboard_rows[3]}]
set_property -dict {PACKAGE_PIN D13 IOSTANDARD LVCMOS33} [get_ports {keyboard_cols[0]}]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {keyboard_cols[1]}]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports {keyboard_cols[2]}]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports FPGA_DO]

# Pmod JB
set_property -dict {PACKAGE_PIN E15 IOSTANDARD LVCMOS33} [get_ports {sev_seg_cathodes[0]}]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports {sev_seg_cathodes[1]}]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports {sev_seg_cathodes[2]}]
set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports {sev_seg_cathodes[3]}]
set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports {sev_seg_cathodes[4]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {sev_seg_cathodes[5]}]
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports {sev_seg_cathodes[6]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {sev_seg_cathodes[7]}]

# Pmod JC
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {CA[0]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {CA[1]}]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {CA[2]}]
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports {CA[3]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports unlocked_state]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports locked_state]
set_property -dict {PACKAGE_PIN T13 IOSTANDARD LVCMOS33} [get_ports checking_state]
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports rst]

create_pblock pblock_1
