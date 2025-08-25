

PROGRAM _INIT
	(* Insert code here *)
	TempFreq	:= 0;
	TempCurrent	:= 0;
	TempVoltage	:= 0;
	TempSpeed	:= 0;
	TempPF		:= 0;
									
	Save			:= 1;
	Axis_Motor		:= 0;
	Old_AxisMotor	:= 0;

	SDOTune_rd.enable	:= 0;
	SDOTune_rd.pDevice 	:= ADR(PLC_INTF); //POWERLINK interface on MN (PLC) ‘IF1’
	SDOTune_rd.node 	:= plc_node; //Node address is set to 3 

	SDOTune_wr.enable	:= 0;
	SDOTune_wr.pDevice	:= ADR(PLC_INTF);
	SDOTune_wr.node		:= plc_node;


END_PROGRAM