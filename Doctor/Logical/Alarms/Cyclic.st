
PROGRAM _CYCLIC
	(* Insert code here *)
	Alarm_cnt	:= 0;
	
	FOR i := 0 TO 99 DO
		IF(Alarm_mc[i] > 0)THEN
			Alarm_cnt	:= Alarm_cnt + 1;
		END_IF
	END_FOR
	
	IF(Alarm_cnt > 0)THEN
		Statusdp_blink	:= 1;
		IF(count = 0)THEN
			Blink_ON.IN	:= 1;
			IF(Blink_ON.Q = 1)THEN
				count := 1;
				Blink_ON.IN	:= 0;
			END_IF
		ELSE
			Blink_OFF.IN	:= 1;
			IF(Blink_OFF.Q = 1)THEN
				count := 0;
				Blink_OFF.IN := 0;
			END_IF
		END_IF
		
	ELSE
		Blink_ON.IN		:= 0;
		Blink_OFF.IN	:= 0;
		Statusdp_blink	:= 0;
	END_IF
		
	Blink_ON(IN := TRUE, PT := 1);	//1 × 10ms = 10 milliseconds
	Blink_OFF(IN := TRUE, PT := 1);
		
	
END_PROGRAM
