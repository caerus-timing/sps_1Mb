# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  set BRAM_A_DATA_SIZE [ipgui::add_param $IPINST -name "BRAM_A_DATA_SIZE"]
  set_property tooltip {Size of the data returning on the BRAM A channel} ${BRAM_A_DATA_SIZE}
  set BRAM_A_ADDR_SIZE [ipgui::add_param $IPINST -name "BRAM_A_ADDR_SIZE"]
  set_property tooltip {The number of bits to address BRAM A} ${BRAM_A_ADDR_SIZE}
  set BRAM_A_DEPTH [ipgui::add_param $IPINST -name "BRAM_A_DEPTH"]
  set_property tooltip {The number of entries in BRAM A} ${BRAM_A_DEPTH}

}

proc update_PARAM_VALUE.BRAM_A_ADDR_SIZE { PARAM_VALUE.BRAM_A_ADDR_SIZE } {
	# Procedure called to update BRAM_A_ADDR_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_A_ADDR_SIZE { PARAM_VALUE.BRAM_A_ADDR_SIZE } {
	# Procedure called to validate BRAM_A_ADDR_SIZE
	return true
}

proc update_PARAM_VALUE.BRAM_A_DATA_SIZE { PARAM_VALUE.BRAM_A_DATA_SIZE } {
	# Procedure called to update BRAM_A_DATA_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_A_DATA_SIZE { PARAM_VALUE.BRAM_A_DATA_SIZE } {
	# Procedure called to validate BRAM_A_DATA_SIZE
	return true
}

proc update_PARAM_VALUE.BRAM_A_DEPTH { PARAM_VALUE.BRAM_A_DEPTH } {
	# Procedure called to update BRAM_A_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_A_DEPTH { PARAM_VALUE.BRAM_A_DEPTH } {
	# Procedure called to validate BRAM_A_DEPTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.BRAM_A_ADDR_SIZE { MODELPARAM_VALUE.BRAM_A_ADDR_SIZE PARAM_VALUE.BRAM_A_ADDR_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_A_ADDR_SIZE}] ${MODELPARAM_VALUE.BRAM_A_ADDR_SIZE}
}

proc update_MODELPARAM_VALUE.BRAM_A_DATA_SIZE { MODELPARAM_VALUE.BRAM_A_DATA_SIZE PARAM_VALUE.BRAM_A_DATA_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_A_DATA_SIZE}] ${MODELPARAM_VALUE.BRAM_A_DATA_SIZE}
}

proc update_MODELPARAM_VALUE.BRAM_A_DEPTH { MODELPARAM_VALUE.BRAM_A_DEPTH PARAM_VALUE.BRAM_A_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_A_DEPTH}] ${MODELPARAM_VALUE.BRAM_A_DEPTH}
}

