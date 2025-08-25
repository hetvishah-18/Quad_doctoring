

PROGRAM _INIT
	(* Insert code here *)
	(* Get NMT Status *)
	SDORead1.enable	:= 0;
	SDORead1.pDevice := ADR(PLC_INTF); //POWERLINK interface on MN (PLC) ‘IF1’
	SDORead1.node := 3; //Node address is set to 3 

	SDOWrite.enable		:= 0;
	SDOWrite.node		:= 3;
	SDOWrite.pDevice	:= ADR(PLC_INTF);
	SDOWrite.pData		:= ADR(Control_WORD);

	cnt_enable		:= 0;
	SDO_rdinit		:= 1;
	SDO_rd			:= 0;
	execonce_rd		:= 1;
	init			:= 1;
	SDO_wr			:= 0;
	execonce_wr		:= 0;
	dlycnt			:= 0;
	dlycnt1			:= 0;

END_PROGRAM