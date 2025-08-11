
PROGRAM _CYCLIC

	(* Time base counter *)
	HSCounter();
	
	(*Used 4th Channel of AI2 for Winder RPM. Copy the same to the 5th element of array AI3 *)
	IF(initialize = 1)THEN
		(* Initialize filter of all axes to 0 *)
		FOR i := 0 TO (MAX_AXES - 1) DO	
			Axis_RpmInpFilt[i].x := 0;
			Axis_RpmInpFilt[i]();
			AxisRPM[i].InpBits := Axis_RpmInpFilt[i].y;	
		END_FOR	
		
		(* Initialize filtRPM of all axes to 0 *)
		FOR i := 0 TO (MAX_AXES-1) DO
			Axis_RPM[i].x:= 0;
			Axis_RPM[i]();
		END_FOR
		
		FOR i := 0 TO (MAX_AXES - 1) DO	
			Axis_KNInpFilt[i].x	:= 0;
			Axis_KNInpFilt[i]();
			AxisKN[i].InpBits := Axis_KNInpFilt[i].y;	
		END_FOR	
		
		(* Initialize filtRPM of all axes to 0 *)
		FOR i := 0 TO (MAX_AXES-1) DO
			Axis_KN[i].x := 0;
			Axis_KN[i]();
		END_FOR
		
		initialize := 0;
		
		
	ELSE

		(* CALCULATE RPM OF EACH AXIS *)

		(* Adding filter to analog inputs for RPM *)
		FOR i := 0 TO (MAX_AXES - 1) DO	
			Axis_RpmInpFilt[i].x := AI3[i];
			Axis_RpmInpFilt[i]();

			AxisRPM[i].InpBits := Axis_RpmInpFilt[i].y;	
		END_FOR
	
		FOR i := 0 TO (MAX_AXES-1) DO
			Axis_RPM[i].x := AxisRPM[i].InpBits;
			Axis_RPM[i]();
		END_FOR
	
		Actual.UnWindRPM	:= Axis_RPM[UNWINDER].y;
		Actual.InfeedRPM	:= Axis_RPM[INFEED].y;
		Actual.OutfeedRPM	:= Axis_RPM[OUTFEED].y;
		Actual.WindRPM		:= Axis_RPM[WINDER].y;
		
		(* CALCULATE ACTUAL RPM AND DIAMETER OF Winder/Unwinder *)		
		Actual.RPM 	:= (Encoder_counts/PulsesPerRev) * 60

		(* CALCULATE MPM OF EACH AXIS *)	
		Actual.MainMPM		:= (Actual.MainRPM * 314 * Set.MainRoleDia)/100; (* Main Roller MPM UNIT 0.001 *)
	
		Actual.UnWindDia	:= (Actual.MainMPM * 100)/(Actual.UnWindRPM * 314); (* UnWinder MPM UNIT 0.001 *)

		Actual.InfeedMPM	:= (Actual.InfeedRPM * 314 * Set.InfeedRolerDia)/100;(* InFeed MPM UNIT 0.001 *)
		
		Actual.OutfeedMPM	:= (Actual.OutfeedRPM * 314 * Set.OutfeedRolerDia)/100; (* OutFeed MPM UNIT 0.001 *)

		Actual.WindDia		:= (Actual.MainMPM * 100)/(Actual.WindRPM * 314);  (* Winder MPM UNIT 0.001 *)
	
		
		(* SCALE MPM OF EACH AXIS by FACTOR OF 1024 *)
		Actual.MainMPM		:=  (Actual.MainPulses * 314 * Set.MainRoleDia)/102400; (* Main Roller MPM UNIT 0.001 *)
		
		Actual.UnWindDia	:= (Actual.MainMPM * PulsesPerRev * 100)/(Actual.UnWindPulses * 314); (* UnWinder MPM UNIT 0.001 *)

		Actual.InfeedMPM	:= (Actual.InfeedPulses * 314 * Set.InfeedRolerDia)/PulsesPerRev * 100;(* InFeed MPM UNIT 0.001 *)
		
		Actual.OutfeedMPM	:= (Actual.OutfeedPulses * 314 * Set.OutfeedRolerDia)/PulsesPerRev * 100; (* OutFeed MPM UNIT 0.001 *)

		Actual.WindDia		:= (Actual.MainMPM * PulsesPerRev * 100)/(Actual.WindPulses * 314);  (* Winder MPM UNIT 0.001 *)
		
		Actual.WindDia := ((Actual.MPM * 100 )/(314 * Actual.RPM)) - Wind.Dia.MinDia;
		
		Actual.UnWindDia := ((Actual.MPM * 100 )/(314 * Actual.RPM)) + UnWind.Dia.MinDia;
		
		(* NUMBER OF REVOLUTIONS FROM SCALED MPM *)
		Actual.MainRevs 	:= Actual.MainPulses/PulsesPerRev;
		
		Actual.UnWindRevs 	:= Actual.UnWindPulses/PulsesPerRev;
		
		Actual.InfeedRevs 	:= Actual.InfeedPulses/PulsesPerRev;
		
		Actual.OutfeedRevs 	:= Actual.OutfeedPulses/PulsesPerRev;
		
		Actual.WindRevs 	:= Actual.WindPulses/PulsesPerRev;
			
		
		(* CALCULATE Tension(KN) OF EACH AXIS *)
		
		(* Adding filter to analog inputs for LoadCell *)

		FOR i := 0 TO (MAX_AXES - 1) DO	
			Axis_KNInpFilt[i].x	:= AI1[i];
			Axis_KNInpFilt[i]();

			AxisKN[i].InpBits := Axis_KNInpFilt[i].y;	
		END_FOR
	
		FOR i := 0 TO (MAX_AXES-1) DO
			Axis_KN[i].x := AxisKN[i].InpBits;
			Axis_KN[i]();
		END_FOR
		
		Actual.UnWindTension	:= Axis_KN[UNWINDER].y;
		Actual.InfeedTension	:= Axis_KN[INFEED].y;
		Actual.OutfeedTension	:= Axis_KN[OUTFEED].y;
		Actual.WindTension		:= Axis_KN[WINDER].y;
		
		Timer(IN := Enable, PT := T#2s);  // Start timer when Enable is TRUE

		// Rising edge detection for timer.Q
		IF (Timer.Q AND NOT Timer.IN) THEN
			SampledMPM := ActualMPM;
			SampledRPM := ActualRPM;
			SampleTaken := TRUE;
			Timer(IN := FALSE);	// Reset timer
		ELSE
			SampleTaken := FALSE;
		END_IF;

	END_IF

		
END_PROGRAM
