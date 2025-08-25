
PROGRAM _CYCLIC
	(* Insert code here *)
	cnt	:= cnt + 1;
	x	:= cnt MOD 3;
	
	IF(cnt < 50) THEN
		IF(x = 0)THEN
			var	:= var + 5;
		ELSIF (x = 1)THEN
			var	:= var - 2;
		ELSE
			var	:= var - 1;
		END_IF
	ELSIF (cnt < 100)THEN
		IF(x = 0)THEN
			var	:= var + 5;
		ELSIF (x = 1)THEN
			var	:= var - 2;
		ELSE
			var	:= var - 1;
		END_IF
	END_IF
	
	IF(cnt >= 100)THEN
		cnt	:= 0;
		var	:= 500;
	END_IF

	Drive_RW[0].Read_DINT[2]	:= var;
	
END_PROGRAM
