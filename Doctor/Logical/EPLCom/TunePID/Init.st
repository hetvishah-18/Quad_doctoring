

PROGRAM _INIT
	(* Insert code here *)
	SDORead_PID.enable	:= 0;
	SDORead_PID.pDevice := ADR(PLC_INTF); //POWERLINK interface on MN (PLC) ‘IF1’
	SDORead_PID.node := 3; //Node address is set to 3 

	SDO_PIDWR.enable	:= 0;
	SDO_PIDWR.node		:= 3;
	SDO_PIDWR.pDevice	:= ADR(PLC_INTF);
	
	Axis_PID	:= 0;
	CopytoDrv	:= 0;
	plc_node	:= 3;
	SDO_pidwr	:= 0; 
	SavePID		:= 0;
	Old_AxisPID	:= 0;
	dlycnt_wrpid := 0;

END_PROGRAM