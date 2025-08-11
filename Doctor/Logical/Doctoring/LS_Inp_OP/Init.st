

PROGRAM _INIT
	(* Insert code here *)
	memset(ADR(DigInp), 0, SIZEOF(DigInp));
	MPMIncTime.IN	:= 0;
	MPMIncTime.PT	:= 9999;
	
	MPMDecTime.IN	:= 0;
	MPMDecTime.PT	:= 9999;
	
	check_init	:= 1;
	

END_PROGRAM