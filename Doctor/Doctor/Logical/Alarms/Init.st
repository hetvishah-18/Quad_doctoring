

PROGRAM _INIT
	(* Insert code here *)
	Statusdp_alarm	:= 0;
	Alarm_cnt		:= 0;
	Alarm_new		:= 0;
	Blink_ON.IN		:= 0;
	Blink_ON.PT		:= 100;
	Blink_OFF.IN	:= 0;
	Blink_OFF.PT	:= 100;
	
	memset(ADR(Alarms), 0, SIZEOF(Alarms));

END_PROGRAM