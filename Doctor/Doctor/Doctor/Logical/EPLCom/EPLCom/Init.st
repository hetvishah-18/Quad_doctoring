

PROGRAM _INIT
	(* Insert code here *)
	(* Get NMT Status *)
	SDORead1.enable	:= 0;
	SDORead1.datalen := 4; //Data length, 2 bytes for 16-bit parameter
	SDORead1.pDevice := ADR(PLC_INTF); //POWERLINK interface on MN (PLC) ‘IF1’
	SDORead1.pData := ADR(NMT_Stat); //Data to be read into here
	SDORead1.node := 3; //Node address is set to 3 
	SDORead1.index := 16#1000; //Read CAN related parameters starting from 0x1000 - 0x1fff
	SDORead1.subindex := 0;
	
	SDORead2.enable		:= 0;
	SDORead2.datalen := 4; //Data length, 2 bytes for 16-bit parameter
	SDORead2.pDevice := ADR(PLC_INTF); //POWERLINK interface on MN (PLC) ‘IF1’
	SDORead2.pData := ADR(Obj_Ident); //Data to be read into here
	SDORead2.node := 3; //Node address is set to 3 
	SDORead2.index := 16#1018; //Read CAN related parameters starting from 0x1000 - 0x1fff
	SDORead2.subindex := 2;  //Read the product code from the drive
	
	
	DataReceived	:= 25;
	cnt_enable		:= 0;
	SDO_rd			:= 0;
	
END_PROGRAM