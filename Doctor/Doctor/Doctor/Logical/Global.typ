
TYPE
	ActVal_typ : 	STRUCT 
		Input_Val : INT;
		Output_Val : INT;
		Scale : Scale_typ;
	END_STRUCT;
	Act_para : 	STRUCT 
		UnWindMPM : INT;
		UnWindTension : INT;
		UnWindRPM : INT;
		UnWindDia : INT;
		WindMPM : INT;
		WindTension : INT;
		WindRPM : INT;
		WindDia : INT;
		MainMPM : INT;
		MainRPM : INT;
		MainDia : USINT;
		InfeedTension : INT;
		OutfeedTension : INT;
		InfeedRPM : INT;
		OutfeedRPM : INT;
		InfeedMPM : INT;
		OutfeedMPM : INT;
	END_STRUCT;
	Ax_NonTensionCtl1 : 	STRUCT 
		MPM : MPM_typ;
		Enable : BOOL;
		RPM : RPM_typ;
		Dia : Diameter_Scale;
		Drive : Drive_typ;
	END_STRUCT;
	Ax_TensionCtl : 	STRUCT 
		Tension : Tension_typ;
		MPM : MPM_typ;
		Enable : BOOL;
		RPM : RPM_typ;
		Drive : Drive_typ;
		Dia : Diameter_Scale;
	END_STRUCT;
	Diameter_Scale : 	STRUCT 
		InpMPM : INT;
		InpRPM : INT;
		ActDia : INT;
		MinDia : INT;
		MaxDia : INT;
	END_STRUCT;
	Drive_typ : 	STRUCT 
		Freq_Scal : Scale_typ;
		RPM_Scal : Scale_typ;
		Trq_Scal : Scale_typ;
		Current_Scal : Scale_typ;
		ActFreq : INT;
		Status : USINT;
		ActualTrq : INT;
		ActualAmp : INT;
		ActRPM : INT;
		Fault : USINT;
	END_STRUCT;
	MPM_Scale : 	STRUCT 
		InpDia : INT;
		InpRPM : INT;
		ActMPM : INT;
	END_STRUCT;
	MPM_typ : 	STRUCT 
		SetMPM : INT;
		ActualMPM : INT;
		Enable : BOOL;
		Set : SetVal_typ;
		Actual : ActVal_typ;
	END_STRUCT;
	PIDPara_typ : 	STRUCT 
		Y_max : INT;
		Y_min : INT;
		dY_max : REAL;
		Kp_sta : REAL;
		Tn_sta : REAL;
		Tv_sta : REAL;
		Tf_sta : REAL;
		WindDamp : REAL;
		Fbk_mode : REAL;
		d_mode : USINT;
		calc_mode : USINT;
		Attenu_val : REAL;
		Update : BOOL;
		Kp_mov : USINT;
		Tn_mov : USINT;
		Tv_mov : USINT;
		Tf_mov : USINT;
	END_STRUCT;
	RPM_Scale : 	STRUCT 
		InpMPM : INT;
		InpDia : INT;
		ActRPM : INT;
		InpBits : INT;
	END_STRUCT;
	RPM_typ : 	STRUCT 
		SetRPM : INT;
		ActualRPM : INT;
		Enable : BOOL;
		Set : SetVal_typ;
		Actual : ActVal_typ;
		PulsesPerRev : INT;
	END_STRUCT;
	Scale_typ : 	STRUCT 
		InMin : INT;
		InMax : INT;
		OutMin : INT;
		OutMax : INT;
		Filter_tim : INT;
	END_STRUCT;
	SetVal_typ : 	STRUCT 
		Output_Val : INT;
		Input_Val : INT;
		Scale : Scale_typ;
	END_STRUCT;
	Set_para : 	STRUCT 
		MaxUnWindDia : INT;
		MaxWindDia : INT;
		MaxTorque : INT;
		MinUnWindDia : INT;
		MaxRPM : INT;
		MinRPM : INT;
		MinWindDia : INT;
		MinTorque : INT;
		MaxCurrent : INT;
		MinCurrent : INT;
		MainRoleDia : INT;
		MainMPM : INT;
		UnWindTension : INT;
		WindTension : INT;
		InfeedRolerDia : INT;
		OutfeedRolerDia : INT;
	END_STRUCT;
	Tension_Scale : 	STRUCT 
		InpDia : INT;
		InpMPM : INT;
		ActTension : INT;
	END_STRUCT;
	Tension_typ : 	STRUCT 
		Actual : ActVal_typ;
		Set : SetVal_typ;
		Enable : BOOL;
		SetTension : INT;
		ActualTension : INT;
	END_STRUCT;
	Ax_GeneralRef : 	STRUCT 
		MPM : MPM_Scale;
		RPM : RPM_Scale;
		PulsesPerRev : INT;
	END_STRUCT;
END_TYPE
