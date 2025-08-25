
TYPE
	ActVal_typ : 	STRUCT 
		Input_Val : INT;
		Output_Val : INT;
		Scale : Scale_typ;
	END_STRUCT;
	Ax_GeneralRef : 	STRUCT 
		MPM : MPM_Scale;
		RPM : RPM_Scale;
		PulsesPerRev : INT;
		MotorRating : MotorRating_typ;
	END_STRUCT;
	Ax_NonTensionCtl : 	STRUCT 
		MPM : MPM_typ;
		Enable : BOOL;
		RPM : RPM_typ;
		Drive : Drive_typ;
		Dia : Diameter_Scale;
		StartingDia : UINT;
		MotorRating : MotorRating_typ;
	END_STRUCT;
	Ax_TensionCtl : 	STRUCT 
		Tension : Tension_typ;
		MPM : MPM_typ;
		Enable : BOOL;
		RPM : RPM_typ;
		Drive : Drive_typ;
		Dia : Diameter_Scale;
		StartingDia : UINT;
		MotorRating : MotorRating_typ;
	END_STRUCT;
	Diameter_Scale : 	STRUCT 
		InpMPM : INT;
		InpRPM : INT;
		ActDia : INT;
		MinDia : INT;
		MaxDia : INT;
	END_STRUCT;
	DigInp_typ : 	STRUCT 
		Emergency_OK : BOOL;
		Jog_mode : BOOL;
		Production_mode : BOOL;
		MPM_Increase : BOOL;
		MPM_Decrease : BOOL;
		Safety_Trip : BOOL;
		Spare1 : BOOL;
		Spare2 : BOOL;
		Spare3 : BOOL;
		Spare4 : BOOL;
		Spare5 : BOOL;
		Spare6 : BOOL;
		Spare7 : BOOL;
		Spare8 : BOOL;
		Spare9 : BOOL;
		Spare10 : BOOL;
	END_STRUCT;
	DigOp_typ : 	STRUCT 
		DriveOK : ARRAY[0..6]OF BOOL;
		Production_Enable : BOOL;
		Alarm_Lamp : BOOL;
		Safety_Trip : BOOL;
		Spare1 : BOOL;
		Spare2 : BOOL;
		Spare3 : BOOL;
		Spare4 : BOOL;
		Spare5 : BOOL;
		Spare6 : BOOL;
		Spare7 : BOOL;
		Spare8 : BOOL;
		Spare9 : BOOL;
		Spare10 : BOOL;
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
		Drive_Healthy : BOOL;
		Drive_Enable : BOOL;
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
		GearRatio : USINT;
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
	Tension_typ : 	STRUCT 
		Actual : ActVal_typ;
		Set : SetVal_typ;
		Enable : BOOL;
		SetTension : INT;
		ActualTension : INT;
		PID : PID_typ;
	END_STRUCT;
	DriveRW_typ : 	STRUCT 
		Read_BOOL : ARRAY[0..9]OF BOOL;
		Read_UINT : ARRAY[0..9]OF UINT;
		Read_INT : ARRAY[0..9]OF INT;
		Read_USINT : ARRAY[0..9]OF USINT;
		Read_DINT : ARRAY[0..9]OF DINT;
		Read_UDINT : ARRAY[0..9]OF UDINT;
		Write_BOOL : ARRAY[0..9]OF BOOL;
		Write_INT : ARRAY[0..9]OF INT;
		Write_UINT : ARRAY[0..9]OF UINT;
		Write_USINT : ARRAY[0..9]OF USINT;
		Write_DINT : ARRAY[0..9]OF DINT;
		Write_UDINT : ARRAY[0..9]OF UDINT;
	END_STRUCT;
	MotorRating_typ : 	STRUCT 
		RatedFreq : DINT;
		RatedCurrent : DINT;
		RatedSpeed : DINT;
		RatedVoltage : INT;
		RatedPF : INT;
	END_STRUCT;
	PID_typ : 	STRUCT 
		Prop_Gain : INT;
		Intg_Gain : INT;
		Derv_Gain : INT;
		UpperLimit : INT;
		LowerLimit : INT;
		Enable : USINT;
		Reference_Add : INT;
		Feedback_Add : INT;
		Output : INT;
		Error : INT;
	END_STRUCT;
END_TYPE
