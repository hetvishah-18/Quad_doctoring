
PROGRAM _CYCLIC
	(* Insert code here *)

	IF(SDO_rd = 1)THEN
		SDORead1(enable := TRUE);
		IF (SDORead1.status = 0) THEN
//			SDORead1(enable := FALSE);
			SDO_rd	:= SDO_rd + 1;
		ELSIF (SDORead1.status = 20925)THEN
			SDORead1.enable	:= 0;
			tempstat		:= SDORead1.status;
		ELSIF((SDORead1.status >= 31340)AND(SDORead1.status < 65530)) THEN
//			SDORead1(enable := FALSE);
			tempstat	:= SDORead1.status;	
		END_IF

	ELSE
//		SDORead1(enable := FALSE);
	END_IF

	
	IF(SDO_rd2 = 1)THEN
		SDORead2(enable := TRUE);
		IF (SDORead2.status = 0) THEN
//			SDORead2(enable := FALSE);
			SDO_rd2		:= SDO_rd2 + 1;
		ELSIF (SDORead2.status = 20925)THEN
			SDORead2.enable	:= 0;
			tempstat_2		:= SDORead2.status;
		ELSIF ((SDORead2.status >= 31340)AND(SDORead2.status < 65530)) THEN
//			SDORead2(enable := FALSE);
			tempstat_2	:= SDORead2.status;	
		
		END_IF
	ELSE
//		SDORead1(enable := FALSE);
	END_IF


	DataReceived_INT := DataRead_INT;
	
	IF(cnt_enable = 1)THEN
		DataTobeSent_UINT	:= DataTobeSent_UINT + 1;
	END_IF
	
END_PROGRAM
