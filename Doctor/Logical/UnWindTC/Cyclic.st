
PROGRAM _CYCLIC
	(* Insert code here *)
	(* PID parameters *)
	LCPIDpara_0.enable := start;
	LCPIDpara_0.enter  := paraEnter; 
	LCPIDpara_0();		(* LCPIDpara function block call *)
	paraEnter := 0;

	(* PID controller *)
	LCPID_0.enable   := start;
	LCPID_0.ident    := LCPIDpara_0.ident; (* ident of PIDpara -> provides parameters (Kp, Tn, Tv, ...) *)
	LCPID_0.W        := setValue;
	LCPID_0.X        := actValue;
	LCPID_0.basetime := baseLCCounter.mscnt;
	LCPID_0();		(* LCPID function block call *)
	manipulatedVar := LCPID_0.Y;

END_PROGRAM
