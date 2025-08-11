
PROGRAM _CYCLIC
	// Time base counter
	HSCounter();
	
	IF(initialize = 1)THEN
		// Initialize all filters
		
		UnwindFilt.x	:= 0;
		UnwindFilt();

		WindFilt.x		:= 0;
		WindFilt();
			
		IF(UnWind.RPM.PulsesPerRev = 0)THEN
			UnWind.RPM.PulsesPerRev := 1;
		END_IF
		
		IF(Wind.RPM.PulsesPerRev= 0)THEN
			Wind.RPM.PulsesPerRev := 1;
		END_IF
				
		initialize := 0;

		Time_1sec.IN	:= 1;
		Old_EncValue	:= Enc_Value;
		
		AI1[1]	:= AI1[0];
		AI1[2]	:= AI1[1];
		AI1[3]	:= AI1[2];
		
	ELSE
		// CALCULATE RPM AND MPM OF IDLER AXIS

		IF(Time_1sec.Q = 1)THEN
			PulsesPerMin	:= (Enc_Value - Old_EncValue)*60;
			Time_1sec.IN	:= 0;
		ELSIF (Time_1sec.IN = 0)THEN
			Old_EncValue	:= Enc_Value;
			Time_1sec.IN	:= 1;			
		END_IF
		
		Idler.RPM.ActRPM := UDINT_TO_INT(PulsesPerMin)/Idler.PulsesPerRev;
		Idler.MPM.ActMPM := (314 * Idler.MPM.InpDia * Idler.RPM.ActRPM)/1000; // Idler Roller MPM (in 0.01 MPM) -> which is the system MPM
		

		//Filter the Winder & UnWinder RPM values read from the Drive
		UnwindFilt.x	:= DINT_TO_INT(UnWind.Drive.ActRPM/10);
		UnwindFilt();
		UnWind.RPM.Actual.Input_Val	:= UnwindFilt.y;
		
		WindFilt.x		:= DINT_TO_INT(Wind.Drive.ActRPM/10);
		WindFilt();		
		Wind.RPM.Actual.Input_Val	:= WindFilt.y;
		
		
		//Calculate the RPM of Winder & Unwinder after filtering of Drive RPM & Scaling the value
		UnWindRPM_Scal.x		:= UnWind.RPM.Actual.Input_Val;
		UnWindRPM_Scal();
		UnWind.RPM.ActualRPM	:= UnWindRPM_Scal.y;
		
		WindRPM_Scal.x			:= Wind.RPM.Actual.Input_Val;
		WindRPM_Scal();
		Wind.RPM.ActualRPM		:= WindRPM_Scal.y;
		
		// CALCULATE DIAMETER OF WINDER AND UNWINDER
		IF(UnWind.RPM.ActualRPM > 0)THEN
			Numerator			:= INT_TO_UDINT(Idler.MPM.ActMPM * 1000);
			Denominator			:= INT_TO_UDINT(UnWind.RPM.ActualRPM * 314);
			UnWind.Dia.ActDia	:= UDINT_TO_INT(Numerator/Denominator) - UnWind.Dia.MinDia; // Winder DIA UNIT 0.01
		END_IF
		
		IF(Wind.RPM.ActualRPM > 0)THEN
			Numerator			:= INT_TO_UDINT(Idler.MPM.ActMPM * 1000);
			Denominator			:= INT_TO_UDINT(Wind.RPM.ActualRPM * 314);
			Wind.Dia.ActDia		:= UDINT_TO_INT(Numerator/Denominator) + Wind.Dia.MinDia; // Winder DIA UNIT 0.01
		END_IF
	
		//Just assign
		UnWind.Drive.ActFreq	:= UnWind.Drive.ActFreq;
		UnWind.Drive.ActRPM		:= UnWind.Drive.ActRPM;
		UnWind.Drive.ActualAmp	:= UnWind.Drive.ActualAmp;
		UnWind.Drive.ActualTrq	:= UnWind.Drive.ActualTrq;
		
	END_IF

	Time_1sec();

END_PROGRAM