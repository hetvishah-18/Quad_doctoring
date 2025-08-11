
PROGRAM _CYCLIC
	(* Insert code here *)
	DigInp.Emergency_OK		:= DI1[0];
	DigInp.Jog_mode			:= DI1[1];
	Mode_Intermediate		:= DI1[2];
	DigInp.MPM_Decrease		:= DI1[3];
	DigInp.MPM_Increase		:= DI1[4];
	DigInp.Safety_Trip		:= DI1[5];
	
	IF(check_init = 1)THEN
		IF (Mode_Intermediate = 1)THEN
			Alarm_mc[0]	:= 1; 
			mode_allow	:= 0;
		ELSE
			mode_allow	:= 1;
		END_IF
		check_init	:= 0;
	END_IF
		
	
	IF(mode_allow = 1)THEN
		IF((DigInp.Jog_mode = 0)AND(Mode_Intermediate = 1))THEN
			DigInp.Production_mode	:= Mode_Intermediate;
		ELSE
			DigInp.Production_mode	:= 0;
		END_IF
	ELSE
		DigInp.Production_mode	:= 0;		
	END_IF
	
	
	IF(DigInp.Production_mode = 1)THEN
		IF(DigInp.MPM_Increase = 1)THEN
			MPMIncTime.IN	:= 1;
			IF(MPMIncTime.ET < 500)THEN
				inc_cnt	:= inc_cnt + 1;
				IF(inc_cnt >= 50)THEN
					UnWind.MPM.SetMPM	:= UnWind.MPM.SetMPM + 1;
					inc_cnt	:= 0;
				END_IF
			ELSIF(MPMIncTime.ET < 800)THEN
				inc_cnt	:= inc_cnt + 1;
				IF(inc_cnt >= 50)THEN
					UnWind.MPM.SetMPM	:= UnWind.MPM.SetMPM + 10;
					inc_cnt	:= 0;
				END_IF
			ELSIF(MPMIncTime.ET < 1000)THEN
				inc_cnt	:= inc_cnt + 1;
				IF(inc_cnt >= 50)THEN
					UnWind.MPM.SetMPM	:= UnWind.MPM.SetMPM + 100;
					inc_cnt	:= 0;
				END_IF
			END_IF
		ELSE
			MPMIncTime.IN	:= 0;
			inc_cnt			:= 0;
		END_IF
		
		IF(DigInp.MPM_Decrease = 1)THEN
			MPMDecTime.IN	:= 1;
			IF(MPMDecTime.ET < 500)THEN
				dec_cnt	:= dec_cnt + 1;
				IF(dec_cnt >= 50)THEN
					UnWind.MPM.SetMPM	:= UnWind.MPM.SetMPM - 1;
					dec_cnt	:= 0;
				END_IF
			ELSIF(MPMDecTime.ET < 800)THEN
				dec_cnt	:= dec_cnt + 1;
				IF(dec_cnt >= 50)THEN
					UnWind.MPM.SetMPM	:= UnWind.MPM.SetMPM - 10;
					dec_cnt	:= 0;
				END_IF
			ELSIF(MPMDecTime.ET < 1000)THEN
				dec_cnt	:= dec_cnt + 1;
				IF(dec_cnt >= 50)THEN
					UnWind.MPM.SetMPM	:= UnWind.MPM.SetMPM - 100;
					dec_cnt	:= 0;
				END_IF
			END_IF
		ELSE
			MPMDecTime.IN	:= 0;
			dec_cnt			:= 0;
		END_IF
	ELSE
		MPMDecTime.IN	:= 0;
		dec_cnt			:= 0;
		MPMIncTime.IN	:= 0;
		inc_cnt			:= 0;		
	END_IF
	
	MPMIncTime();
	MPMDecTime();
					
	
END_PROGRAM
