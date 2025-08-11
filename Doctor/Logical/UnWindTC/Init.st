

PROGRAM _INIT
	(* Insert code here *)
	(* Parameters for PID controller *)
	UnWindPID.A        := 0;
	UnWindPID.Y_man    := 0;
	UnWindPID.Y_fbk    := 0;
	UnWindPID.hold_I   := FALSE;
	UnWindPID.out_mode := LCPID_OUT_MODE_AUTO;

	(* Parameters for PID controller *)
	LCPID_0.A        := 0;
	LCPID_0.Y_man    := 0;
	LCPID_0.Y_fbk    := 0;
	LCPID_0.hold_I   := FALSE;
	LCPID_0.out_mode := LCPID_OUT_MODE_AUTO;

	(* Parameters for PT2 element *)
	LCRPT2_0.V     := 0.039;
	LCRPT2_0.T1    := 0.9;
	LCRPT2_0.T2    := 15.3;
	LCRPT2_0.y_set := 0.0;
	LCRPT2_0.set   := 0;
	 
END_PROGRAM