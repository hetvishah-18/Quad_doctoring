

PROGRAM _INIT
		(*Input of Tension Sensor for 4 axes except main drive *)
	AI1[0]	:= 0;	(*Unwinder Loadcell *)
	AI1[1]	:= 0;	(* Infeed Loadcell *)
	AI1[2]	:= 0;	(* Outfeed Loadcell *)
	AI1[3]	:= 0;	(* Winder Load cell *)
	AI1[4]	:= 0;	(* Dummy Load cell for Main Drive *)
	
	
	AI2[0]	:= 0;
	AI2[1]	:= 0;
	AI2[2]	:= 0;
	AI2[3]	:= 0; (*This input is configured for MAIN RPM calculation *)
	
	(* Input for RPM measurement from drive AI for 4 axes except Winder RPM*)
	AI3[0]	:= 0;   (* Unwinder RPM *)
	AI3[1]	:= 0;	(* Infeed RPM *)
	AI3[2]	:= 0;	(* Outfeed RPM *)
	AI3[3]	:= 0;	(* Winder RPM *)
	AI3[4]	:= 0;	(*This input is configured from AI2[3] for MAIN RPM *)

	AO1[0]	:= 0;
	AO1[1]	:= 0;
	AO1[2]	:= 0;
	AO1[3]	:= 0;

	DI1[0]	:= 0;
	DI1[1]	:= 0;
	DI1[2]	:= 0;
	DI1[3]	:= 0;
	DI1[4]	:= 0;
	DI1[5]	:= 0;
	DI1[6]	:= 0;
	DI1[7]	:= 0;
	DI1[8]	:= 0;
	DI1[9]	:= 0;
	DI1[10]	:= 0;
	DI1[11]	:= 0;

	DI2[0]	:= 0;
	DI2[1]	:= 0;
	DI2[2]	:= 0;
	DI2[3]	:= 0;
	DI2[4]	:= 0;
	DI2[5]	:= 0;
	DI2[6]	:= 0;
	DI2[7]	:= 0;
	DI2[8]	:= 0;
	DI2[9]	:= 0;
	DI2[10]	:= 0;
	DI2[11]	:= 0;

	DO1[0]	:= 0;
	DO1[1]	:= 0;
	DO1[2]	:= 0;
	DO1[3]	:= 0;
	DO1[4]	:= 0;
	DO1[5]	:= 0;
	DO1[6]	:= 0;
	DO1[7]	:= 0;
	DO1[8]	:= 0;
	DO1[9]	:= 0;
	DO1[10]	:= 0;
	DO1[11]	:= 0;
	
	DO2[0]	:= 0;
	DO2[1]	:= 0;
	DO2[2]	:= 0;
	DO2[3]	:= 0;
	DO2[4]	:= 0;
	DO2[5]	:= 0;
	DO2[6]	:= 0;
	DO2[7]	:= 0;
	DO2[8]	:= 0;
	DO2[9]	:= 0;
	DO2[10]	:= 0;
	DO2[11]	:= 0;

	
	PageCall	:= 0;
	LastPage	:= 0;
	NewPageReq	:= 0;
	PrevPage	:= 0;
	CurrPage	:= 0;
	DrvComm		:= 0;
	Init		:= 1;
	ParamChange	:= 0;
	NewPage		:= 0;
	SetNewDateTime	:= 0;

END_PROGRAM
