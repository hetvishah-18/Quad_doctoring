PROGRAM _CYCLIC
    (* Write the PID values to the Drive as well as write Reference Source and Destination Addresses *)
	IF ( SavePID = 1 ) THEN 
		CASE Axis_PID OF
			0: 		// None
                
			1:		// Unwinder
				UnWind.Tension.PID.Prop_Gain 		:= TempPropGain;
				UnWind.Tension.PID.Intg_Gain 		:= TempIntgGain;
				UnWind.Tension.PID.Derv_Gain 		:= TempDervGain;
				UnWind.Tension.PID.Reference_Add	:= TempPIDRef;
				UnWind.Tension.PID.Feedback_Add		:= TempPIDFeedback;
				UnWind.Tension.PID.Enable			:= TempPIDEnable;
				UnWind.Tension.PID.UpperLimit		:= TempUpperLim;
				UnWind.Tension.PID.LowerLimit		:= TempLowerLim;
				
				CopytoDrv	:= 1;
				plc_node	:= 3;
				SDO_pidwr	:= 1; // Trigger the PID Write State Machine
                
			2:		// Winder
				Wind.Tension.PID.Prop_Gain 		:= TempPropGain;
				Wind.Tension.PID.Intg_Gain 		:= TempIntgGain;
				Wind.Tension.PID.Derv_Gain 		:= TempDervGain;
				Wind.Tension.PID.Reference_Add	:= TempPIDRef;
				Wind.Tension.PID.Feedback_Add	:= TempPIDFeedback;
				Wind.Tension.PID.Enable			:= TempPIDEnable;
				Wind.Tension.PID.UpperLimit		:= TempUpperLim;
				Wind.Tension.PID.LowerLimit		:= TempLowerLim;

				CopytoDrv	:= 1;
				plc_node	:= 4;
				SDO_pidwr	:= 1; // Trigger the PID Write State Machine
                
			3:		// Infeed
                
			4:		// Outfeed
                
			5:		// Main
                
		END_CASE
		SavePID			:= 0;
		Axis_PID		:= 0;
		Old_AxisPID		:= Axis_PID;
        
	ELSE
		IF(Axis_PID <> Old_AxisPID)THEN
			CASE Axis_PID OF
				0: 		// None
					TempPropGain	:= 0;
					TempIntgGain	:= 0;
					TempDervGain	:= 0;
					TempPIDRef		:= 0;
					TempPIDFeedback := 0;
					TempPIDEnable	:= 0;
					TempUpperLim	:= 0;
					TempLowerLim	:= 0;
                                
				1:		// Unwinder
					TempPropGain	:= UnWind.Tension.PID.Prop_Gain;
					TempIntgGain	:= UnWind.Tension.PID.Intg_Gain;
					TempDervGain	:= UnWind.Tension.PID.Derv_Gain;
					TempPIDRef		:= UnWind.Tension.PID.Reference_Add;
					TempPIDFeedback	:= UnWind.Tension.PID.Feedback_Add;
					TempPIDEnable	:= UnWind.Tension.PID.Enable;
					TempUpperLim	:= UnWind.Tension.PID.UpperLimit;
					TempLowerLim	:= UnWind.Tension.PID.LowerLimit;
                                                
				2:		// Winder
					TempPropGain	:= Wind.Tension.PID.Prop_Gain;
					TempIntgGain	:= Wind.Tension.PID.Intg_Gain;
					TempDervGain	:= Wind.Tension.PID.Derv_Gain;
					TempPIDRef		:= Wind.Tension.PID.Reference_Add;
					TempPIDFeedback	:= Wind.Tension.PID.Feedback_Add;
					TempPIDEnable	:= Wind.Tension.PID.Enable;
					TempUpperLim	:= Wind.Tension.PID.UpperLimit;
					TempLowerLim	:= Wind.Tension.PID.LowerLimit;
                
				3:		// Infeed
					TempPropGain	:= 0;
					TempIntgGain	:= 0;
					TempDervGain	:= 0;
					TempPIDRef		:= 0;
					TempPIDFeedback	:= 0;
					TempPIDEnable	:= 0;
					TempUpperLim	:= 0;
					TempLowerLim	:= 0;
            
				4:		// Outfeed
					TempPropGain	:= 0;
					TempIntgGain	:= 0;
					TempDervGain	:= 0;
					TempPIDRef		:= 0;
					TempPIDFeedback	:= 0;
					TempPIDEnable	:= 0;
					TempUpperLim	:= 0;
					TempLowerLim	:= 0;
                                
				5:		// Main
					TempPropGain	:= 0;
					TempIntgGain	:= 0;
					TempDervGain	:= 0;
					TempPIDRef		:= 0;
					TempPIDFeedback := 0;
					TempPIDEnable	:= 0;
					TempUpperLim	:= 0;
					TempLowerLim	:= 0;
            
			END_CASE		
			Old_AxisPID		:= Axis_PID;
		END_IF
	END_IF
    
	
	CASE wrpid_step OF
		0: // Idle - Wait for trigger
			IF(SDO_pidwr = 1)THEN
				wrpid_step		:= 1;
				dlycnt_wrpid	:= 0;
			END_IF	
            
		1: // Write Proportional Gain
			SDO_PIDWR.node		:= plc_node; // <- CRITICAL: Set the node address
			SDO_PIDWR.pData		:= ADR(TempPropGain); // Write the Temp value from UI
			SDO_PIDWR.datalen 	:= 2;
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 10;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
            
			IF(dlycnt_wrpid > 1)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 2;
					dlycnt_wrpid		:= 0;
				ELSIF(SDO_PIDWR.status <> 65535)THEN // If any other error occurs
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0; // Reset state machine on error
					dlycnt_wrpid		:= 0;
					SDO_pidwr			:= 0;
				END_IF
			END_IF
            
		2: // Write Integral Gain
			SDO_PIDWR.node		:= plc_node;
			SDO_PIDWR.pData		:= ADR(TempIntgGain);
			SDO_PIDWR.datalen 	:= 2;
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 11;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
            
			IF(dlycnt_wrpid > 1)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 3;
					dlycnt_wrpid		:= 0;
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0;
					dlycnt_wrpid		:= 0;
					SDO_pidwr			:= 0;
				END_IF
			END_IF
            
		3: // Write Derivative Gain
			SDO_PIDWR.node		:= plc_node;
			SDO_PIDWR.pData		:= ADR(TempDervGain);
			SDO_PIDWR.datalen 	:= 2;
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 12;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
            
			IF(dlycnt_wrpid > 1)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 4;
					dlycnt_wrpid		:= 0;
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0;
					dlycnt_wrpid		:= 0;
					SDO_pidwr			:= 0;
				END_IF
			END_IF
            
		4: // Write Reference Source (Optional Configuration)
			SDO_PIDWR.node		:= plc_node;
			SDO_PIDWR.pData		:= ADR(TempPIDRef); // Assuming this is set elsewhere
			SDO_PIDWR.datalen 	:= 2;
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 03;	// This is linked to 12.008
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
            
			IF(dlycnt_wrpid > 1)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 5; 
					dlycnt_wrpid		:= 0;
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0;
					dlycnt_wrpid		:= 0;
					SDO_pidwr			:= 0;
				END_IF
			END_IF

		5: // Write Feedback Source (Optional Configuration)
			SDO_PIDWR.node		:= plc_node;
			SDO_PIDWR.pData		:= ADR(TempPIDFeedback); // Assuming this is set elsewhere
			SDO_PIDWR.datalen 	:= 2;
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 04;	// This is linked to 7.001
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
            
			IF(dlycnt_wrpid > 1)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 6; 
					dlycnt_wrpid		:= 0;
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0;
					dlycnt_wrpid		:= 0;
					SDO_pidwr			:= 0;
				END_IF
			END_IF
		6: // Write Output Upper Limit (Optional Configuration)
			SDO_PIDWR.node		:= plc_node;
			SDO_PIDWR.pData		:= ADR(TempUpperLim); // Assuming this is set elsewhere
			SDO_PIDWR.datalen 	:= 2;
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 13;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
            
			IF(dlycnt_wrpid > 1)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 7; 
					dlycnt_wrpid		:= 0;
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0;
					dlycnt_wrpid		:= 0;
					SDO_pidwr			:= 0;
				END_IF
			END_IF
			
		7: // Write Output Lower Limit (Optional Configuration)
			SDO_PIDWR.node		:= plc_node;
			SDO_PIDWR.pData		:= ADR(TempLowerLim); // Assuming this is set elsewhere
			SDO_PIDWR.datalen 	:= 2;
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 14;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
            
			IF(dlycnt_wrpid > 1)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 8; 
					dlycnt_wrpid		:= 0;
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0;
					dlycnt_wrpid		:= 0;
					SDO_pidwr			:= 0;
				END_IF
			END_IF
			
		8: // Write PID Enable/Disable
			SDO_PIDWR.node		:= plc_node;
			SDO_PIDWR.pData		:= ADR(TempPIDEnable); // Assuming this is set elsewhere
			SDO_PIDWR.datalen 	:= 1;
			SDO_PIDWR.index 	:= 16#200E;
			SDO_PIDWR.subindex	:= 08;
			SDO_PIDWR.enable	:= 1;
			dlycnt_wrpid		:= dlycnt_wrpid + 1;
            
			IF(dlycnt_wrpid > 1)THEN
				IF (SDO_PIDWR.status = 0) THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0; 
					dlycnt_wrpid		:= 0;
					SDO_pidwr			:= 0;
				ELSIF(SDO_PIDWR.status <> 65535)THEN
					SDO_PIDWR.enable	:= 0;
					wrpid_step			:= 0;
					dlycnt_wrpid		:= 0;
					SDO_pidwr			:= 0;
				END_IF
			END_IF

	END_CASE
					
(*
	CASE rdpid_step OF
		0: // Idle - Wait for trigger
			IF(SDO_pid = 1)THEN
				rdpid_step	:= 1;
				dlycnt_pid	:= 0;
			END_IF	
            
		1: // Read Proportional Gain
			SDORead_PID.node		:= plc_node; // <- CRITICAL: Set the node address
			SDORead_PID.pData 		:= ADR(PID_WORD);
			SDORead_PID.datalen 	:= 2;
			SDORead_PID.index 		:= 16#200E;
			SDORead_PID.subindex	:= 10;
			SDORead_PID.enable		:= 1;
			dlycnt_pid				:= dlycnt_pid + 1;
            
			IF(dlycnt_pid > 2)THEN
				IF (SDORead_PID.status = 0) THEN
					SDORead_PID.enable	:= 0;
					rdpid_step			:= 2;
					dlycnt_pid			:= 0;
					UnWind.Tension.PID.Prop_Gain	:= PID_WORD; // Store read value	
				ELSIF(SDORead_PID.status <> 65535)THEN
					SDORead_PID.enable	:= 0;
					rdpid_step			:= 0; // Reset on error
					dlycnt_pid			:= 0;
					SDO_pid				:= 0;
				END_IF
			END_IF
            
		2: // Read Integral Gain
			SDORead_PID.node		:= plc_node;
			SDORead_PID.pData 		:= ADR(PID_WORD);
			SDORead_PID.datalen 	:= 2;
			SDORead_PID.index 		:= 16#200E;
			SDORead_PID.subindex	:= 11;
			SDORead_PID.enable		:= 1;
			dlycnt_pid				:= dlycnt_pid + 1;
            
			IF(dlycnt_pid > 2)THEN
				IF (SDORead_PID.status = 0) THEN
					SDORead_PID.enable	:= 0;
					rdpid_step			:= 3;
					dlycnt_pid			:= 0;
					UnWind.Tension.PID.Intg_Gain	:= PID_WORD;
				ELSIF(SDORead_PID.status <> 65535)THEN
					SDORead_PID.enable	:= 0;
					rdpid_step			:= 0;
					dlycnt_pid			:= 0;
					SDO_pid				:= 0;
				END_IF
			END_IF
            
		3: // Read Derivative Gain
			SDORead_PID.node		:= plc_node;
			SDORead_PID.pData 		:= ADR(PID_WORD);
			SDORead_PID.datalen 	:= 2;
			SDORead_PID.index 		:= 16#200E;
			SDORead_PID.subindex	:= 12;
			SDORead_PID.enable		:= 1;
			dlycnt_pid				:= dlycnt_pid + 1;
            
			IF(dlycnt_pid > 2)THEN
				IF (SDORead_PID.status = 0) THEN
					SDORead_PID.enable	:= 0;
					rdpid_step			:= 4;
					dlycnt_pid			:= 0;
					UnWind.Tension.PID.Derv_Gain	:= PID_WORD;
				ELSIF(SDORead_PID.status <> 65535)THEN
					SDORead_PID.enable	:= 0;
					rdpid_step			:= 0;
					dlycnt_pid			:= 0;
					SDO_pid				:= 0;
				END_IF
			END_IF
            
		4: // Read Reference Source
			SDORead_PID.node		:= plc_node;
			SDORead_PID.pData 		:= ADR(RefSrc_WORD);
			SDORead_PID.datalen 	:= 2;
			SDORead_PID.index 		:= 16#200E;
			SDORead_PID.subindex	:= 03;
			SDORead_PID.enable		:= 1;
			dlycnt_pid				:= dlycnt_pid + 1;
            
			IF(dlycnt_pid > 2)THEN
				IF (SDORead_PID.status = 0) THEN
					SDORead_PID.enable	:= 0;
					rdpid_step			:= 0; // Sequence complete
					dlycnt_pid			:= 0;
					SDO_pid				:= 0; // Clear the trigger
					PID_RefSrc			:= INT_TO_UINT(RefSrc_WORD);
				ELSIF(SDORead_PID.status <> 65535)THEN
					SDORead_PID.enable	:= 0;
					rdpid_step			:= 0;
					dlycnt_pid			:= 0;
					SDO_pid				:= 0;
				END_IF
			END_IF
	END_CASE
  *)  

	(* Safety Nets: Ensure state machines reset cleanly if their trigger is cleared externally *)
(*	IF(SDO_pid = 0)THEN
		SDORead_PID.enable	:= 0;
		rdpid_step			:= 0;
		dlycnt_pid			:= 0;
	END_IF
*)
	IF(SDO_pidwr = 0)THEN
		SDO_PIDWR.enable	:= 0;
		wrpid_step			:= 0;
		dlycnt_wrpid		:= 0;
	END_IF

	(* Execute the SDO function blocks *)
	SDO_PIDWR();
//	SDORead_PID();
	
    
END_PROGRAM