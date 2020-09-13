# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "state0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "state1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "state2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "state3" -parent ${Page_0}


}

proc update_PARAM_VALUE.state0 { PARAM_VALUE.state0 } {
	# Procedure called to update state0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.state0 { PARAM_VALUE.state0 } {
	# Procedure called to validate state0
	return true
}

proc update_PARAM_VALUE.state1 { PARAM_VALUE.state1 } {
	# Procedure called to update state1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.state1 { PARAM_VALUE.state1 } {
	# Procedure called to validate state1
	return true
}

proc update_PARAM_VALUE.state2 { PARAM_VALUE.state2 } {
	# Procedure called to update state2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.state2 { PARAM_VALUE.state2 } {
	# Procedure called to validate state2
	return true
}

proc update_PARAM_VALUE.state3 { PARAM_VALUE.state3 } {
	# Procedure called to update state3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.state3 { PARAM_VALUE.state3 } {
	# Procedure called to validate state3
	return true
}


proc update_MODELPARAM_VALUE.state0 { MODELPARAM_VALUE.state0 PARAM_VALUE.state0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.state0}] ${MODELPARAM_VALUE.state0}
}

proc update_MODELPARAM_VALUE.state1 { MODELPARAM_VALUE.state1 PARAM_VALUE.state1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.state1}] ${MODELPARAM_VALUE.state1}
}

proc update_MODELPARAM_VALUE.state2 { MODELPARAM_VALUE.state2 PARAM_VALUE.state2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.state2}] ${MODELPARAM_VALUE.state2}
}

proc update_MODELPARAM_VALUE.state3 { MODELPARAM_VALUE.state3 PARAM_VALUE.state3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.state3}] ${MODELPARAM_VALUE.state3}
}

