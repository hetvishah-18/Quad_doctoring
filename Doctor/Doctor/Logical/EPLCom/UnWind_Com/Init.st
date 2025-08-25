

PROGRAM _INIT
	(* Insert code here *)
	(* Get NMT Status *)
	SDORead1.enable	:= 0;
	SDORead1.pDevice := ADR(PLC_INTF); //POWERLINK interface on MN (PLC) ‘IF1’
	SDORead1.node := 3; //Node address is set to 3 
	//	SDORead1.index := 16#200A; //Read CAN related parameters starting from 0x1000 - 0x1fff

	SDOWrite.enable		:= 0;
	SDOWrite.node		:= 3;
	SDOWrite.pDevice	:= ADR(PLC_INTF);
	SDOWrite.pData		:= ADR(Control_WORD);
//	SDOWrite.index		:= 16#2006;

	SDORead_PID.enable	:= 0;
	SDORead_PID.pDevice := ADR(PLC_INTF); //POWERLINK interface on MN (PLC) ‘IF1’
	SDORead_PID.node := 3; //Node address is set to 3 

	SDO_PIDWR.enable	:= 0;
	SDO_PIDWR.node		:= 3;
	SDO_PIDWR.pDevice	:= ADR(PLC_INTF);
	SDO_PIDWR.pData		:= ADR(Control_WORD); 
	//	SDOWrite.index		:= 16#2006;


	DataReceived	:= 25;
	cnt_enable		:= 0;
	SDO_rd			:= 0;
	init			:= 1;
	SDO_wr			:= 1;
END_PROGRAM