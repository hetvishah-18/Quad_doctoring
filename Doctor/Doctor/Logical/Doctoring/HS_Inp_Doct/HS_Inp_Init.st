
PROGRAM _INIT
	(* Insert code here *)
	initialize	:= 1;
	
	(*Input of Tension Sensor for 4 axes except main drive *)
	AI1[0]	:= 0;	(*Unwinder Loadcell *)
	AI1[1]	:= 0;	(* Infeed Loadcell *)
	AI1[2]	:= 0;	(* Outfeed Loadcell *)
	AI1[3]	:= 0;	(* Winder Load cell *)

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
	
	i	:= 0;
	
	IF(Idler.PulsesPerRev = 0)THEN
		Idler.PulsesPerRev	:= 1;
	END_IF
	
	IF(UnWind.RPM.Actual.Scale.Filter_tim = 0)THEN
		UnWind.RPM.Actual.Scale.Filter_tim	:= 15;
	END_IF
	
	UnwindFilt.enable	:= 1;
	UnwindFilt.t		:= UnWind.RPM.Actual.Scale.Filter_tim;
	UnwindFilt.basetime	:= HSCounter.mscnt;
	UnwindFilt.set		:= FALSE;
	UnwindFilt.yset		:= 0;
	
	
	IF(Wind.RPM.Actual.Scale.Filter_tim = 0)THEN
		Wind.RPM.Actual.Scale.Filter_tim	:= 15;
	END_IF

	WindFilt.enable	:= 1;
	WindFilt.t			:= Wind.RPM.Actual.Scale.Filter_tim;
	WindFilt.basetime	:= HSCounter.mscnt;
	WindFilt.set		:= FALSE;
	WindFilt.yset		:= 0;

	UnWind.Enable	:= 1;
	UnWind.MPM.Enable	:= 1;

		
	IF((UnWind.RPM.Actual.Scale.InMin = 0)OR(UnWind.RPM.Actual.Scale.InMax = 0))THEN
		UnWind.RPM.Actual.Scale.InMin	:= 1;
		UnWind.RPM.Actual.Scale.InMax	:= 1;
	END_IF
	
	IF((UnWind.RPM.Actual.Scale.OutMin = 0)OR(UnWind.RPM.Actual.Scale.OutMax = 0))THEN
		UnWind.RPM.Actual.Scale.OutMin	:= 1;
		UnWind.RPM.Actual.Scale.OutMax	:= 1;
	END_IF
	
	IF((Wind.RPM.Actual.Scale.InMin = 0)OR(Wind.RPM.Actual.Scale.InMax = 0))THEN
		Wind.RPM.Actual.Scale.InMin	:= 1;
		Wind.RPM.Actual.Scale.InMax	:= 1;
	END_IF
	
	IF((Wind.RPM.Actual.Scale.OutMin = 0)OR(Wind.RPM.Actual.Scale.OutMax = 0))THEN
		Wind.RPM.Actual.Scale.OutMin	:= 1;
		Wind.RPM.Actual.Scale.OutMax	:= 1;
	END_IF
	
	UnWindRPM_Scal.x1	:= UnWind.RPM.Actual.Scale.InMin;
	UnWindRPM_Scal.x2	:= UnWind.RPM.Actual.Scale.InMax;
	UnWindRPM_Scal.y1	:= UnWind.RPM.Actual.Scale.OutMin;
	UnWindRPM_Scal.y2	:= UnWind.RPM.Actual.Scale.OutMax;

	WindRPM_Scal.x1		:= Wind.RPM.Actual.Scale.InMin;
	WindRPM_Scal.x2		:= Wind.RPM.Actual.Scale.InMax;
	WindRPM_Scal.y1		:= Wind.RPM.Actual.Scale.OutMin;
	WindRPM_Scal.y2		:= Wind.RPM.Actual.Scale.OutMax;

	(* Scaling drive parameters *)
	(* TORQUE *)
	IF((UnWind.Drive.Trq_Scal.InMin = 0)OR(UnWind.Drive.Trq_Scal.InMax = 0))THEN
		UnWind.Drive.Trq_Scal.InMin	:= 1;
		UnWind.Drive.Trq_Scal.InMax	:= 1;
	END_IF
	
	IF((UnWind.Drive.Trq_Scal.OutMin = 0)OR(UnWind.Drive.Trq_Scal.OutMax = 0))THEN
		UnWind.Drive.Trq_Scal.OutMin 	:= 1;
		UnWind.Drive.Trq_Scal.OutMax := 1;
	END_IF
	
	
	IF((Wind.Drive.Trq_Scal.InMin = 0)OR(Wind.Drive.Trq_Scal.InMax = 0))THEN
		Wind.Drive.Trq_Scal.InMin	:= 1;
		Wind.Drive.Trq_Scal.InMax	:= 1;
	END_IF
	
	IF((Wind.Drive.Trq_Scal.OutMin = 0)OR(Wind.Drive.Trq_Scal.OutMax = 0))THEN
		Wind.Drive.Trq_Scal.OutMin 	:= 1;
		Wind.Drive.Trq_Scal.OutMax := 1;
	END_IF
	
	
	(* CURRENT *)
	IF((UnWind.Drive.Current_Scal.InMin = 0)OR(UnWind.Drive.Current_Scal.InMax = 0))THEN
		UnWind.Drive.Current_Scal.InMin	:= 1;
		UnWind.Drive.Current_Scal.InMax	:= 1;
	END_IF
	
	IF((UnWind.Drive.Current_Scal.OutMin = 0)OR(UnWind.Drive.Current_Scal.OutMax = 0))THEN
		UnWind.Drive.Current_Scal.OutMin 	:= 1;
		UnWind.Drive.Current_Scal.OutMax := 1;
	END_IF

	
	IF((Wind.Drive.Current_Scal.InMin = 0)OR(Wind.Drive.Current_Scal.InMax = 0))THEN
		Wind.Drive.Current_Scal.InMin	:= 1;
		Wind.Drive.Current_Scal.InMax	:= 1;
	END_IF
	
	IF((Wind.Drive.Current_Scal.OutMin = 0)OR(Wind.Drive.Current_Scal.OutMax = 0))THEN
		Wind.Drive.Current_Scal.OutMin 	:= 1;
		Wind.Drive.Current_Scal.OutMax := 1;
	END_IF
	
	
	(* RPM *)
	IF((UnWind.Drive.RPM_Scal.InMin = 0)OR(UnWind.Drive.RPM_Scal.InMax = 0))THEN
		UnWind.Drive.RPM_Scal.InMin		:= 1;
		UnWind.Drive.RPM_Scal.InMax		:= 1;
	END_IF
	
	IF((UnWind.Drive.RPM_Scal.OutMin = 0)OR(UnWind.Drive.RPM_Scal.OutMax = 0))THEN
		UnWind.Drive.RPM_Scal.OutMin	:= 1;
		UnWind.Drive.RPM_Scal.OutMax	:= 1;
	END_IF
	
	IF((Wind.Drive.RPM_Scal.InMin = 0)OR(Wind.Drive.RPM_Scal.InMax = 0))THEN
		Wind.Drive.RPM_Scal.InMin	:= 1;
		Wind.Drive.RPM_Scal.InMax	:= 1;
	END_IF
	
	
	(* FREQUENCY *)
	IF((UnWind.Drive.Freq_Scal.InMin = 0)OR(UnWind.Drive.Freq_Scal.InMax = 0))THEN
		UnWind.Drive.Freq_Scal.InMin	:= 1;
		UnWind.Drive.Freq_Scal.InMax	:= 1;
	END_IF
	
	IF((UnWind.Drive.Freq_Scal.OutMin = 0)OR(UnWind.Drive.Freq_Scal.OutMax = 0))THEN
		UnWind.Drive.Freq_Scal.OutMin 	:= 1;
		UnWind.Drive.Freq_Scal.OutMax := 1;
	END_IF
	
	IF((Wind.Drive.Freq_Scal.InMin = 0)OR(Wind.Drive.Freq_Scal.InMax = 0))THEN
		Wind.Drive.Freq_Scal.InMin	:= 1;
		Wind.Drive.Freq_Scal.InMax	:= 1;
	END_IF
	
	IF((Wind.Drive.Freq_Scal.OutMin = 0)OR(Wind.Drive.Freq_Scal.OutMax = 0))THEN
		Wind.Drive.Freq_Scal.OutMin	:= 1;
		Wind.Drive.Freq_Scal.OutMax := 1;
	END_IF
	
	Time_1sec.PT	:= 100;

(*	
	FOR i :=0 TO (MAX_AXES - 1)BY 1 DO
		IF (AxisKN[i].Fact.FilterTime = 0)THEN
			AxisKN[i].Fact.FilterTime	:= 15;
		END_IF

		Axis_KNInpFilt[i].enable		:= TRUE;
		Axis_KNInpFilt[i].t				:= AxisKN[i].Fact.FilterTime;
		Axis_KNInpFilt[i].yset   		:= 0;
		Axis_KNInpFilt[i].basetime 		:= HSCounter.mscnt;
		Axis_KNInpFilt[i].set    		:= FALSE;
	END_FOR;


	FOR i := 0 TO (MAX_AXES - 1) BY 1 DO
		AxisRPM[i].InpBits		:= 0;
		AxisRPM[i].ActRPM		:= 0;

		Axis_RPM[i].x	:= AxisRPM[i].InpBits; 
		Axis_RPM[i]();

		AxisKN[i].InpBits		:=	0;
		AxisKN[i].ActTension	:= 0;

		Axis_KN[i].x	:= AxisKN[i].InpBits;
		Axis_KN[i]();
	END_FOR;
*)	

	(* UnWinder & Infeed calculation initialization *)

	(*	UnWindFilt.enable	:= 1;
	UnWindFilt.set   	:= 1;
	UnWindFilt.t		:= 0.1;
	UnWindFilt.y_set	:= 0.0;
	UnWindFilt.x 		:= 0.0;
	UnWindFilt();
	UnWindFilt.set   	:= 0;

	
	ActUnWindKN.x1		:= UnWindKN.MinBits;
	ActUnWindKN.x2		:= UnWindKN.MaxBits;	 
	ActUnWindKN.y1		:= UnWindKN.MinTension;	 
	ActUnWindKN.y2		:= UnWindKN.MaxTension;

	InfeedFilt.enable	:= 1;
	InfeedFilt.set   	:= 1;
	InfeedFilt.t		:= 0.1;
	InfeedFilt.y_set	:= 0.0;
	InfeedFilt.x 		:= 0.0;
	InfeedFilt();
	InfeedFilt.set   	:= 0;
	
	ActInfeedKN.x1		:= InfeedKN.MinBits;
	ActInfeedKN.x2		:= InfeedKN.MaxBits;	 
	ActInfeedKN.y1		:= InfeedKN.MinTension;	 
	ActInfeedKN.y2		:= InfeedKN.MaxTension;
*)	
	
	(* Winder & Outfeed calculation initialization *)
	


(*	WindFilt.enable		:= 1;
	WindFilt.set   		:= 1;
	WindFilt.t			:= 0.1;
	WindFilt.y_set		:= 0.0;
	WindFilt.x 			:= 0.0;
	WindFilt();
	WindFilt.set   		:= 0;

	
	ActWindKN.x1		:= WinderKN.MinBits;
	ActWindKN.x2		:= WinderKN.MaxBits;	 
	ActWindKN.y1		:= WinderKN.MinTension;	 
	ActWindKN.y2		:= WinderKN.MaxTension;

	OutfeedFilt.enable	:= 1;
	OutfeedFilt.set   	:= 1;
	OutfeedFilt.t		:= 0.1;
	OutfeedFilt.y_set	:= 0.0;
	OutfeedFilt.x 		:= 0.0;
	OutfeedFilt();
	OutfeedFilt.set   	:= 0;
	
	ActOutfeedKN.x1		:= OutfeedKN.MinBits;
	ActOutfeedKN.x2		:= OutfeedKN.MaxBits;	 
	ActOutfeedKN.y1		:= OutfeedKN.MinTension;	 
	ActOutfeedKN.y2		:= OutfeedKN.MaxTension;
*)	

	
END_PROGRAM
