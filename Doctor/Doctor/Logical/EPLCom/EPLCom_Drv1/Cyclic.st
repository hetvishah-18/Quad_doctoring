
PROGRAM _CYCLIC
	(* Insert code here *)

	CASE rd_step OF
		0:
			IF(SDO_rd = 1)THEN
				rd_step	:= 1;
				dlycnt	:= 0;
			END_IF	
		1:
			SDORead1.pData := ADR(Status_WORD); //Data to be read into here
			SDORead1.datalen := 2; //Data length, 2 bytes for 16-bit parameter
			SDORead1.index 		:= 16#200A;
			SDORead1.subindex	:= 40;
			SDORead1.enable		:= 1;
			dlycnt				:= dlycnt + 1;
			IF(dlycnt > 2)THEN
				IF (SDORead1.status = 0) THEN
					SDORead1.enable	:= 0;
					rd_step			:= 2;
					dlycnt			:= 0;
					Drv_Status		:= Status_WORD;	
//				ELSIF((SDORead1.status <> 65535)OR(SDORead1.status <> 65534))THEN
				ELSIF(SDORead1.status <> 65535)THEN
					SDORead1.enable	:= 0;
				END_IF
			END_IF
			
		2:
			SDORead1.pData 		:= ADR(Status_WORD); //Data to be read into here
			SDORead1.datalen 	:= 1; //Data length, 2 bytes for 16-bit parameter
			SDORead1.index 		:= 16#2006;
			SDORead1.subindex	:= 43;
			SDORead1.enable		:= 1;
			dlycnt				:= dlycnt + 1;
			IF(dlycnt > 2)THEN
				IF (SDORead1.status = 0) THEN
					SDORead1.enable	:= 0;
					rd_step			:= 0;
					dlycnt			:= 0;
					SDO_rd			:= 0;
					Control_Enb		:=	INT_TO_USINT(Status_WORD);
//				ELSIF((SDORead1.status <> 65535)OR(SDORead1.status <> 65534))THEN
				ELSIF(SDORead1.status <> 65535)THEN
					SDORead1.enable	:= 0;
				END_IF
			END_IF
	END_CASE
	
	CASE wr_step OF
		0:
			IF(SDO_wr = 1)THEN
				wr_step	:= 1;
				dlycnt1	:= 0;
			END_IF	
		1:

			Control_Enable		:= 0;

			SDOWrite.pData		:= ADR(Control_Enable);
			SDOWrite.datalen 	:= 1; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2006;
			SDOWrite.subindex	:= 43;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 2)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					wr_step			:= 2;
					dlycnt1			:= 0;
//				ELSIF((SDOWrite.status <> 65535)AND(SDOWrite.status <> 65534))THEN
			ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					SDO_wr			:= 0;
				END_IF
			END_IF
			
		2:
			Control_WORD		:= 129;

			SDOWrite.pData		:= ADR(Control_WORD);
			SDOWrite.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2006;
			SDOWrite.subindex	:= 42;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 2)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					wr_step			:= 0;
					dlycnt1			:= 0;
					SDO_wr			:= 0;
//				ELSIF((SDOWrite.status <> 65535)AND(SDOWrite.status <> 65534))THEN
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
				END_IF
			END_IF
	END_CASE


	IF(SDO_rd = 0)THEN
		SDORead1.enable	:= 0;
		rd_step			:= 0;
		dlycnt			:= 0;
	END_IF
	
	IF(SDO_wr = 0)THEN
		SDOWrite.enable	:= 0;
		wr_step			:= 0;
		dlycnt1			:= 0;
	END_IF

	CASE rdpid_step OF
		0:
			IF(SDO_pid = 1)THEN
				rdpid_step	:= 1;
				dlycnt_pid	:= 0;
			END_IF	
		1:
			SDORead_PID.pData 		:= ADR(PID_WORD); //Data to be read into here
			SDORead_PID.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDORead_PID.index 		:= 16#200E;
			SDORead_PID.subindex	:= 10;
			SDORead_PID.enable		:= 1;
			dlycnt_pid			:= dlycnt_pid + 1;
			IF(dlycnt_pid > 2)THEN
				IF (SDORead_PID.status = 0) THEN
					SDORead_PID.enable	:= 0;
					rdpid_step		:= 2;
					dlycnt_pid		:= 0;
					Porp_Gain		:= PID_WORD;	
					//				ELSIF((SDORead_PID.status <> 65535)OR(SDORead_PID.status <> 65534))THEN
				ELSIF(SDORead_PID.status <> 65535)THEN
					SDORead_PID.enable	:= 0;
				END_IF
			END_IF
			
		2:
			SDORead_PID.pData := ADR(PID_WORD); //Data to be read into here
			SDORead_PID.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDORead_PID.index 		:= 16#200E;
			SDORead_PID.subindex	:= 11;
			SDORead_PID.enable		:= 1;
			dlycnt_pid			:= dlycnt_pid + 1;
			IF(dlycnt_pid > 2)THEN
				IF (SDORead_PID.status = 0) THEN
					SDORead_PID.enable	:= 0;
					rdpid_step		:= 3;
					dlycnt_pid		:= 0;
//					SDO_rd			:= 0;
					Ingr_Gain		:= PID_WORD;
//				ELSIF((SDORead_PID.status <> 65535)OR(SDORead_PID.status <> 65534))THEN
				ELSIF(SDORead_PID.status <> 65535)THEN
					SDORead_PID.enable	:= 0;
				END_IF
			END_IF
			
		3:
			SDORead_PID.pData := ADR(PID_WORD); //Data to be read into here
			SDORead_PID.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDORead_PID.index 		:= 16#200E;
			SDORead_PID.subindex	:= 12;
			SDORead_PID.enable		:= 1;
			dlycnt_pid			:= dlycnt_pid + 1;
			IF(dlycnt_pid > 2)THEN
				IF (SDORead_PID.status = 0) THEN
					SDORead_PID.enable	:= 0;
					rdpid_step		:= 4;
					dlycnt_pid		:= 0;
//					SDO_rd			:= 0;
					Derv_Gain		:=	PID_WORD;
//				ELSIF((SDORead_PID.status <> 65535)OR(SDORead_PID.status <> 65534))THEN
				ELSIF(SDORead_PID.status <> 65535)THEN
					SDORead_PID.enable	:= 0;
				END_IF
			END_IF
			
		4:
			SDORead_PID.pData := ADR(RefSrc_WORD); //Data to be read into here
			SDORead_PID.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDORead_PID.index 		:= 16#200E;
			SDORead_PID.subindex	:= 03;
			SDORead_PID.enable		:= 1;
			dlycnt_pid			:= dlycnt_pid + 1;
			IF(dlycnt_pid > 2)THEN
				IF (SDORead_PID.status = 0) THEN
					SDORead_PID.enable	:= 0;
					rdpid_step		:= 0;
					dlycnt_pid		:= 0;
					SDO_pid			:= 0;
					PID_RefSrc		:=	INT_TO_UINT(RefSrc_WORD);
					//				ELSIF((SDORead_PID.status <> 65535)OR(SDORead_PID.status <> 65534))THEN
				ELSIF(SDORead_PID.status <> 65535)THEN
					SDORead_PID.enable	:= 0;
				END_IF
			END_IF
	END_CASE
	

	
	CASE wrpid_step OF
		0:
			IF(SDO_pidwr = 1)THEN
				wrpid_step	:= 1;
				dlycnt_wrpid	:= 0;
			END_IF	
		1:

			SDO_PIDWR.pData		:= ADR(PropGain_Set);
			SDO_PIDWR.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 10;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
			IF(dlycnt_wrpid > 2)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 2;
					dlycnt_wrpid		:= 0;
					//				ELSIF((SDO_PIDWR.status <> 65535)AND(SDO_PIDWR.status <> 65534))THEN
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
					SDO_wr				:= 0;
				END_IF
			END_IF
			
		2:
			SDO_PIDWR.pData		:= ADR(IntGain_Set);
			SDO_PIDWR.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 11;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
			IF(dlycnt_wrpid > 2)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 3;
					dlycnt_wrpid		:= 0;
//				ELSIF((SDO_PIDWR.status <> 65535)AND(SDO_PIDWR.status <> 65534))THEN
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
				END_IF
			END_IF
			
		3:
			SDO_PIDWR.pData		:= ADR(DerGain_Set);
			SDO_PIDWR.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 12;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
			IF(dlycnt_wrpid > 2)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 4;
					dlycnt_wrpid		:= 0;
//				ELSIF((SDO_PIDWR.status <> 65535)AND(SDO_PIDWR.status <> 65534))THEN
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
				END_IF
			END_IF
			
		4:
			SDO_PIDWR.pData		:= ADR(RefSrc_Set);
			SDO_PIDWR.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 03;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
			IF(dlycnt_wrpid > 2)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0;
					dlycnt_wrpid		:= 0;
					SDO_wr				:= 0;
					SDO_pidwr			:= 0;
//				ELSIF((SDO_PIDWR.status <> 65535)AND(SDO_PIDWR.status <> 65534))THEN
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
				END_IF
			END_IF

	END_CASE

	IF(SDO_pid = 0)THEN
		SDORead_PID.enable	:= 0;
		rdpid_step		:= 0;
		dlycnt_pid		:= 0;
	END_IF
	
	IF(SDO_pidwr = 0)THEN
		SDO_PIDWR.enable	:= 0;
		wrpid_step			:= 0;
		dlycnt_wrpid		:= 0;
	END_IF

	
	SDORead1();
	SDOWrite();
	SDORead_PID();
	SDO_PIDWR();

	DataReceived_INT := DataRead_INT;
	
	IF(cnt_enable = 1)THEN
		DataTobeSent_UINT	:= DataTobeSent_UINT + 1;
	END_IF

END_PROGRAM
