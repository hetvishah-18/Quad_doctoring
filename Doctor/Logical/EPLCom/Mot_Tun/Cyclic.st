

PROGRAM _CYCLIC
	(* Insert code here *)
	IF ( Save = 1 ) THEN 
		CASE Axis_Motor OF
			0: 		// None
			
			1:		// Unwinder
				UnWind.MotorRating.RatedFreq 	:= TempFreq;
				UnWind.MotorRating.RatedCurrent := TempCurrent;
				UnWind.MotorRating.RatedVoltage := TempVoltage;
				UnWind.MotorRating.RatedSpeed	:= TempSpeed;
				UnWind.MotorRating.RatedPF 		:= TempPF;
				CopytoDrv						:= 1;
				plc_node						:= 3;
				
			2:		// Winder
				Wind.MotorRating.RatedFreq 		:= TempFreq;
				Wind.MotorRating.RatedCurrent 	:= TempCurrent;
				Wind.MotorRating.RatedVoltage 	:= TempVoltage;
				Wind.MotorRating.RatedSpeed		:= TempSpeed;
				Wind.MotorRating.RatedPF 		:= TempPF;
				CopytoDrv						:= 1;
				plc_node						:= 4;
				
			3:		// Infeed
			
			4:		// Outfeed
			
			5:		// Main
			
		END_CASE
		Save		:= 0;
		Axis_Motor	:= 0;
		Old_AxisMotor	:= Axis_Motor;
	ELSE
		IF(Axis_Motor <> Old_AxisMotor)THEN
			CASE Axis_Motor OF
				0: 		// None
					TempFreq	:= 0;
					TempCurrent	:= 0;
					TempVoltage	:= 0;
					TempSpeed	:= 0;
					TempPF		:= 0;
									
				1:		// Unwinder
					TempFreq	:= UnWind.MotorRating.RatedFreq;
					TempCurrent	:= UnWind.MotorRating.RatedCurrent;
					TempVoltage	:= UnWind.MotorRating.RatedVoltage;
					TempSpeed	:= UnWind.MotorRating.RatedSpeed;
					TempPF		:= UnWind.MotorRating.RatedPF;
					
				2:		// Winder
					TempFreq	:= Wind.MotorRating.RatedFreq;
					TempCurrent	:= Wind.MotorRating.RatedCurrent;
					TempVoltage	:= Wind.MotorRating.RatedVoltage;
					TempSpeed	:= Wind.MotorRating.RatedSpeed;
					TempPF		:= Wind.MotorRating.RatedPF;
					
				3:		// Infeed
					TempFreq	:= 0;
					TempCurrent	:= 0;
					TempVoltage	:= 0;
					TempSpeed	:= 0;
					TempPF		:= 0;
				
				4:		// Outfeed
					TempFreq	:= 0;
					TempCurrent	:= 0;
					TempVoltage	:= 0;
					TempSpeed	:= 0;
					TempPF		:= 0;
									
				5:		// Main
					TempFreq	:= 0;
					TempCurrent	:= 0;
					TempVoltage	:= 0;
					TempSpeed	:= 0;
					TempPF		:= 0;
				
			END_CASE		
			Old_AxisMotor	:= Axis_Motor;
		END_IF
	END_IF


	CASE motordata_step OF
		0:
			IF(CopytoDrv = 1)THEN
				motordata_step	:= 1;
				dlycnt1			:= 0;
			END_IF	
			
		1:
			SDOWrite.node		:= plc_node;
			SDOWrite.pData		:= ADR(TempFreq);
			SDOWrite.datalen 	:= 4; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2005;
			SDOWrite.subindex	:= 6;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 2;
					dlycnt1			:= 0;
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 0;
					CopytoDrv		:= 0;
				END_IF
			END_IF
			
		2:
			// Write Motor Current
			SDOWrite.node		:= plc_node;
			SDOWrite.pData		:= ADR(TempCurrent);
			SDOWrite.datalen 	:= 4; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2005;
			SDOWrite.subindex	:= 7;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 3;
					dlycnt1			:= 0;
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 0;
					CopytoDrv		:= 0;
				END_IF
			END_IF

		3:
			SDOWrite.node		:= plc_node;
			SDOWrite.pData		:= ADR(TempVoltage);
			SDOWrite.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2005; //Index = 0x2000 + Menu Number
			SDOWrite.subindex	:= 9;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 4;
					dlycnt1			:= 0;
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 0;
					CopytoDrv		:= 0;
				END_IF
			END_IF
			
		4:
			SDOWrite.node		:= plc_node;
			SDOWrite.pData		:= ADR(TempSpeed);
			SDOWrite.datalen 	:= 4; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2005; //Index = 0x2000 + Menu Number
			SDOWrite.subindex	:= 8;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 5;
					dlycnt1			:= 0;
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 0;
					CopytoDrv		:= 0;
				END_IF
			END_IF
		5:
			SDOWrite.node		:= plc_node;
			SDOWrite.pData		:= ADR(TempPF);
			SDOWrite.datalen 	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDOWrite.index 		:= 16#2005; //Index = 0x2000 + Menu Number
			SDOWrite.subindex	:= 10;
			SDOWrite.enable		:= 1;
			dlycnt1				:= dlycnt1 + 1;
			IF(dlycnt1 > 1)THEN
				IF (SDOWrite.status = 0) THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 0;
					dlycnt1			:= 0;
					CopytoDrv		:= 0;
				ELSIF(SDOWrite.status <> 65535)THEN
					SDOWrite.enable	:= 0;
					motordata_step	:= 0;
					CopytoDrv		:= 0;
				END_IF
			END_IF
	END_CASE

	
	IF(Tune_Enable = 1)THEN
		Old_AxisMotorTune	:= Axis_MotorTune;
	END_IF
	
	(* Initial Power Up Configuring the Control Word to Read Freq. Command from Preset-1 & disable other preset values 
	& enable the Control *)
	
	CASE wr_step OF
		0:
			IF(Tune_Enable = 1)THEN
				IF(Axis_MotorTune = 1)THEN
					plc_node	:= 3;
				ELSIF(Axis_MotorTune = 2)THEN
					plc_node	:= 4;
				END_IF
				wr_step		:= 1; //Tune UnWinder motor				
				dlycnt	:= 0;
			END_IF	
			
		1:
			//Disable the Control Enable
			Control_Enable		:= 0;

			SDOTune_wr.node		:= plc_node;
			SDOTune_wr.pData	:= ADR(Control_Enable);
			SDOTune_wr.datalen 	:= 1; //Data length, 2 bytes for 16-bit parameter
			SDOTune_wr.index 	:= 16#2006;
			SDOTune_wr.subindex	:= 43;
			SDOTune_wr.enable	:= 1;
			dlycnt				:= dlycnt + 1;
			IF(dlycnt > 1)THEN
				IF (SDOTune_wr.status = 0) THEN
					SDOTune_wr.enable	:= 0;
					wr_step				:= 2;
					dlycnt				:= 0;
				ELSIF(SDOTune_wr.status <> 65535)THEN
					SDOTune_wr.enable	:= 0;
				END_IF
			END_IF
		2:
			//Confirm that the Drive is not Active
			
			SDOTune_rd.node		:= plc_node;
			SDOTune_rd.pData 	:= ADR(Status_WORD); //Data to be read into here
			SDOTune_rd.datalen	:= 2; //Data length, 2 bytes for 16-bit parameter
			SDOTune_rd.index 	:= 16#200A;
			SDOTune_rd.subindex	:= 40;
			SDOTune_rd.enable	:= 1;
			dlycnt				:= dlycnt + 1;
			IF(dlycnt > 1)THEN
				IF (SDOTune_rd.status = 0) THEN
					SDOTune_rd.enable	:= 0;
					dlycnt				:= 0;
					IF(Status_WORD.1 = 0)THEN
						wr_step			:= 3;
					END_IF
				ELSIF(SDOTune_rd.status <> 65535)THEN
					SDOTune_rd.enable	:= 0;
				END_IF
			END_IF
			
		3:
			// Set the Auto Tune Bit
			Tune_Start			:= 2;
			
			SDOTune_wr.pData	:= ADR(Tune_Start);
			SDOTune_wr.datalen 	:= 1; //Data length, 2 bytes for 16-bit parameter
			SDOTune_wr.index 	:= 16#2005;
			SDOTune_wr.subindex	:= 12;
			SDOTune_wr.enable	:= 1;
			dlycnt				:= dlycnt + 1;
			IF(dlycnt > 3)THEN
				IF (SDOTune_wr.status = 0) THEN
					SDOTune_wr.enable	:= 0;
					wr_step			:= 4;
					dlycnt			:= 0;
					firstchck		:= 1;
				ELSIF(SDOTune_wr.status <> 65535)THEN
					SDOTune_wr.enable	:= 0;
				END_IF
			END_IF
		4:
			//Disable the Control Enable
			Control_Enable		:= 1;

			SDOTune_wr.node		:= plc_node;
			SDOTune_wr.pData	:= ADR(Control_Enable);
			SDOTune_wr.datalen 	:= 1; //Data length, 2 bytes for 16-bit parameter
			SDOTune_wr.index 	:= 16#2006;
			SDOTune_wr.subindex	:= 43;
			SDOTune_wr.enable	:= 1;
			dlycnt				:= dlycnt + 1;
			IF(dlycnt > 1)THEN
				IF (SDOTune_wr.status = 0) THEN
					SDOTune_wr.enable	:= 0;
					wr_step				:= 5;
					dlycnt				:= 0;
				ELSIF(SDOTune_wr.status <> 65535)THEN
					SDOTune_wr.enable	:= 0;
				END_IF
			END_IF
			
		5:
			// Check if Auto Tune is complete
			SDOTune_rd.node		:= plc_node;
			SDOTune_rd.pData 	:= ADR(Status_WORD); 
			SDOTune_rd.datalen	:= 1; 
			SDOTune_rd.index 	:= 16#2005;
			SDOTune_rd.subindex	:= 12;
			
			IF(firstchck = 1)THEN 
				SDOTune_rd.enable	:= 1;
			ELSIF(chkdly > 50)THEN
				SDOTune_rd.enable	:= 1;
				chkdly				:= 0;
			END_IF
			
			dlycnt			:= dlycnt + 1;
			
			IF(dlycnt > 1)THEN
				IF (SDOTune_rd.status = 0) THEN
					SDOTune_rd.enable	:= 0;
					IF(Status_WORD = 0)THEN
						wr_step		:= 0;
						Tune_Enable	:= 0;
						dlycnt		:= 0;
						chkdly		:= 0;
					END_IF
				ELSIF(SDOTune_rd.status <> 65535)THEN
					SDOTune_rd.enable	:= 0;
				END_IF
			END_IF

			IF(Status_WORD = 2)THEN
				chkdly	:= chkdly + 1;		
			END_IF			
			
	END_CASE

	SDOTune_wr();
	SDOTune_rd();
	SDOWrite();
	
END_PROGRAM
