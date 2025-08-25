
PROGRAM _CYCLIC

	(* Read the Status Word & Control Enable Status on Power ON *)
	
	IF(SDO_rdinit = 1)THEN
		SDORead1.pData 		:= ADR(Status_WORD); //Data to be read into here
		SDORead1.datalen	:= 2; //Data length, 2 bytes for 16-bit parameter
		SDORead1.index 		:= 16#200A;
		SDORead1.subindex	:= 40;
		SDORead1.enable		:= 1;
		dlycnt				:= dlycnt + 1;
		IF(dlycnt > 1)THEN
			IF (SDORead1.status = 0) THEN
				SDORead1.enable	:= 0;
				dlycnt			:= 0;
				Drv_Status		:= Status_WORD;	
			ELSIF(SDORead1.status <> 65535)THEN
				SDORead1.enable	:= 0;
			END_IF
		END_IF

		IF(Drv_Status.0 = 1)THEN
			Wind.Drive.Drive_Healthy	:= 1;
			Alarm[2]					:= 0;
			SDO_wr						:= 1;	//Update the control word and enable the drive
			Statuschk_dly				:= 0;
			SDO_rdinit					:= 0;
		ELSE
			Statuschk_dly				:= Statuschk_dly + 1;
			IF(Statuschk_dly > 4)THEN			
				Wind.Drive.Drive_Healthy	:= 0;
				Alarm[2]				:= 1;
			END_IF
		END_IF
	
	END_IF	
	
	
	
	(* Initial Power Up Configuring the Control Word to Read Freq. Command from Preset-1 & disable other preset values 
	& enable the Control *)
	
	CASE wr_step OF
		0:
			IF((SDO_wr = 1)AND(init = 1))THEN
				wr_step	:= 1;
				dlycnt1	:= 0;
			END_IF	
			
		1:
			//Disable the Control Enable
			Control_Enable		:= 0;
			SDOWrite.pData		:= ADR(Control_Enable);
			SDOWrite.datalen 	:= 1; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2006;
			SDOWrite.subindex	:= 43;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					wr_step			:= 2;
					dlycnt1			:= 0;
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					SDO_wr			:= 0;
				END_IF
			END_IF
			
		2:
			// Set the Control Word to Run at Preset Mode
			Control_WORD		:= 387;	//For preset
			SDOWrite.pData		:= ADR(Control_WORD);
			SDOWrite.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2006;
			SDOWrite.subindex	:= 42;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					wr_step			:= 3;
					dlycnt1			:= 0;
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
				END_IF
			END_IF
		3:
			DIO_Conf		:= 0;

			SDOWrite.pData		:= ADR(DIO_Conf);
			SDOWrite.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2008; //Index = 0x2000 + Menu Number
			SDOWrite.subindex	:= 22;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					wr_step			:= 4;
					dlycnt1			:= 0;
					//				ELSIF((SDOWrite.status <> 65535)AND(SDOWrite.status <> 65534))THEN
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					SDO_wr			:= 0;
				END_IF
			END_IF
			
		4:
			DIO_Conf		:= 0;

			SDOWrite.pData		:= ADR(DIO_Conf);
			SDOWrite.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2008; //Index = 0x2000 + Menu Number
			SDOWrite.subindex	:= 23;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					wr_step			:= 5;
					dlycnt1			:= 0;
					//				ELSIF((SDOWrite.status <> 65535)AND(SDOWrite.status <> 65534))THEN
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					SDO_wr			:= 0;
				END_IF
			END_IF
			
		5:
			DIO_Conf		:= 0;

			SDOWrite.pData		:= ADR(DIO_Conf);
			SDOWrite.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2008; //Index = 0x2000 + Menu Number
			SDOWrite.subindex	:= 24;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					wr_step			:= 6;
					dlycnt1			:= 0;
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					SDO_wr			:= 0;
				END_IF
			END_IF			

		6:
			//Enable the Control Word once configured
			
			Control_Enable		:= 1;
			SDOWrite.pData		:= ADR(Control_Enable);
			SDOWrite.datalen 	:= 1; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2006;
			SDOWrite.subindex	:= 43;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					wr_step			:= 0;
					dlycnt1			:= 0;
					SDO_wr			:= 0;
					init			:= 0;
					SDO_rd			:= 1;
					execonce_wr		:= 1;
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					SDO_wr			:= 0;
				END_IF
			END_IF			


	END_CASE


	(* Once the Control word is configured on Power ON, read the status of the drive *)
	
	(* Reconfirm that the drives are in Run Mode & Control is enabled *)
	
	CASE rd_step OF
		0:
			IF((SDO_rd = 1)AND(DO1[0] = 1))THEN
				rd_step		:= 1;
				dlycnt		:= 0;
				Drv_Status	:= 0;
			END_IF	
		1:
			// Reconfirm if Status Word still shows drive as Healty
			
			SDORead1.pData := ADR(Status_WORD); //Data to be read into here
			SDORead1.datalen := 2; //Data length, 2 bytes for 16-bit parameter
			SDORead1.index 		:= 16#200A;
			SDORead1.subindex	:= 40;
			SDORead1.enable		:= 1;
			dlycnt				:= dlycnt + 1;
			IF(dlycnt > 1)THEN
				IF (SDORead1.status = 0) THEN
					SDORead1.enable				:= 0;
					rd_step						:= 2;
					dlycnt						:= 0;
					Drv_Status					:= Status_WORD;	
					Wind.Drive.Drive_Enable		:= Status_WORD.1;
					
				ELSIF(SDORead1.status <> 65535)THEN
					SDORead1.enable	:= 0;
				END_IF
			END_IF
			
			
		2:
			// Reconfirm if Control Word Enable is still 1

			SDORead1.pData 		:= ADR(Status_WORD); //Data to be read into here
			SDORead1.datalen 	:= 1; //Data length, 2 bytes for 16-bit parameter
			SDORead1.index 		:= 16#2006;
			SDORead1.subindex	:= 43;
			SDORead1.enable		:= 1;
			dlycnt				:= dlycnt + 1;
			IF(dlycnt > 1)THEN
				IF (SDORead1.status = 0) THEN
					SDORead1.enable	:= 0;
					rd_step			:= 0;
					dlycnt			:= 0;
					SDO_rd			:= 0;
					execonce_rd		:= 1;
					Control_Enb		:=	INT_TO_USINT(Status_WORD);
				ELSIF(SDORead1.status <> 65535)THEN
					SDORead1.enable	:= 0;
				END_IF
			END_IF
	END_CASE
	

	(* Disbale SDO read/write once the configuration is done *)
	IF((SDO_rd = 0)AND(execonce_rd = 1))THEN
		SDORead1.enable	:= 0;
		rd_step			:= 0;
		dlycnt			:= 0;
		execonce_rd		:= 0;
	END_IF
	
	IF((SDO_wr = 0)AND(init = 0)AND(execonce_wr = 1))THEN
		SDOWrite.enable	:= 0;
		wr_step			:= 0;
		dlycnt1			:= 0;
		execonce_wr		:= 0;
	END_IF


	(* AFter Power On, if the SDO Write is triggered then it is to Enable/Disable the drive.
	This enable/Disable is done by forcing the Control_Enable Bit *)	
	
	IF((SDO_wr = 1)AND(init = 0))THEN
		//Control_Enable	:= 0;
		SDOWrite.pData		:= ADR(Control_Enable);
		SDOWrite.datalen 	:= 1; //Data length, 2 bytes for 16-bit parameter
		SDOWrite.index 		:= 16#2006;
		SDOWrite.subindex	:= 43;
		SDOWrite.enable		:= 1;
		dlycnt1				:= dlycnt1 + 1;
		IF(dlycnt1 > 1)THEN
			IF (SDOWrite.status = 0) THEN
				SDOWrite.enable	:= 0;
				wr_step			:= 0;
				dlycnt1			:= 0;
				SDO_wr			:= 0;
				SDO_rd			:= 1;
			ELSIF(SDOWrite.status <> 65535)THEN
				SDOWrite.enable	:= 0;
				SDO_wr			:= 0;
			END_IF
		END_IF
	END_IF
	
	IF((DigInp.Production_mode = 0)AND(DigInp.Jog_mode = 0)AND(statechg = 1))THEN
		Control_Enable	:= 0;
		SDO_wr			:= 1;
		statechg		:= 0;
	ELSIF((DigInp.Production_mode = 1)OR(DigInp.Jog_mode = 1)AND(statechg = 0))THEN
		statechg		:= 1;
		Control_Enable	:= 1;
		SDO_wr			:= 1;
	END_IF
		

	SDORead1();
	SDOWrite();
	 
END_PROGRAM
