# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BRAM_DATAWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BRAM_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COE_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIFO_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KERNEL_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MATRIX_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REG_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.BRAM_DATAWIDTH { PARAM_VALUE.BRAM_DATAWIDTH } {
	# Procedure called to update BRAM_DATAWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_DATAWIDTH { PARAM_VALUE.BRAM_DATAWIDTH } {
	# Procedure called to validate BRAM_DATAWIDTH
	return true
}

proc update_PARAM_VALUE.BRAM_WIDTH { PARAM_VALUE.BRAM_WIDTH } {
	# Procedure called to update BRAM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_WIDTH { PARAM_VALUE.BRAM_WIDTH } {
	# Procedure called to validate BRAM_WIDTH
	return true
}

proc update_PARAM_VALUE.COE_DATA_WIDTH { PARAM_VALUE.COE_DATA_WIDTH } {
	# Procedure called to update COE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COE_DATA_WIDTH { PARAM_VALUE.COE_DATA_WIDTH } {
	# Procedure called to validate COE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.FIFO_DEPTH { PARAM_VALUE.FIFO_DEPTH } {
	# Procedure called to update FIFO_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_DEPTH { PARAM_VALUE.FIFO_DEPTH } {
	# Procedure called to validate FIFO_DEPTH
	return true
}

proc update_PARAM_VALUE.KERNEL_SIZE { PARAM_VALUE.KERNEL_SIZE } {
	# Procedure called to update KERNEL_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KERNEL_SIZE { PARAM_VALUE.KERNEL_SIZE } {
	# Procedure called to validate KERNEL_SIZE
	return true
}

proc update_PARAM_VALUE.MATRIX_SIZE { PARAM_VALUE.MATRIX_SIZE } {
	# Procedure called to update MATRIX_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MATRIX_SIZE { PARAM_VALUE.MATRIX_SIZE } {
	# Procedure called to validate MATRIX_SIZE
	return true
}

proc update_PARAM_VALUE.REG_WIDTH { PARAM_VALUE.REG_WIDTH } {
	# Procedure called to update REG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REG_WIDTH { PARAM_VALUE.REG_WIDTH } {
	# Procedure called to validate REG_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.KERNEL_SIZE { MODELPARAM_VALUE.KERNEL_SIZE PARAM_VALUE.KERNEL_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KERNEL_SIZE}] ${MODELPARAM_VALUE.KERNEL_SIZE}
}

proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.REG_WIDTH { MODELPARAM_VALUE.REG_WIDTH PARAM_VALUE.REG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REG_WIDTH}] ${MODELPARAM_VALUE.REG_WIDTH}
}

proc update_MODELPARAM_VALUE.MATRIX_SIZE { MODELPARAM_VALUE.MATRIX_SIZE PARAM_VALUE.MATRIX_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MATRIX_SIZE}] ${MODELPARAM_VALUE.MATRIX_SIZE}
}

proc update_MODELPARAM_VALUE.FIFO_DEPTH { MODELPARAM_VALUE.FIFO_DEPTH PARAM_VALUE.FIFO_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_DEPTH}] ${MODELPARAM_VALUE.FIFO_DEPTH}
}

proc update_MODELPARAM_VALUE.BRAM_DATAWIDTH { MODELPARAM_VALUE.BRAM_DATAWIDTH PARAM_VALUE.BRAM_DATAWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_DATAWIDTH}] ${MODELPARAM_VALUE.BRAM_DATAWIDTH}
}

proc update_MODELPARAM_VALUE.BRAM_WIDTH { MODELPARAM_VALUE.BRAM_WIDTH PARAM_VALUE.BRAM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_WIDTH}] ${MODELPARAM_VALUE.BRAM_WIDTH}
}

proc update_MODELPARAM_VALUE.COE_DATA_WIDTH { MODELPARAM_VALUE.COE_DATA_WIDTH PARAM_VALUE.COE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COE_DATA_WIDTH}] ${MODELPARAM_VALUE.COE_DATA_WIDTH}
}

