
PROGRAM _CYCLIC
	(* Insert code here *)
	IF(Init = 1)THEN
		Init := 0;
	END_IF
	
	// Time
	// Reads current date/time from PLC's RTC

	RTC_gettime(ADR(RTC_Get));  // Call PLC's built-in RTC function

	// Update outputs for display
	CurrentYear   := RTC_Get.year;
	CurrentMonth  := RTC_Get.month;
	CurrentDay    := RTC_Get.day;
	CurrentHour   := RTC_Get.hour;
	CurrentMinute := RTC_Get.minute;
	CurrentSecond := RTC_Get.second;
	
	// Set Date and Time when 'Set Date Time' button is pressed 
	IF SetNewDateTime THEN
		IF(temp_var = 0)THEN
			Status_RTC	:= 1;
			temp_var	:= 1;
		END_IF
		
		RTC_Set.year    := NewYear;
		RTC_Set.month   := NewMonth;
		RTC_Set.day     := NewDay;
		RTC_Set.hour    := NewHour;
		RTC_Set.minute  := NewMinute;
		RTC_Set.second  := NewSecond;
			        
		// Call RTC set function
		Status_RTC := RTC_settime(ADR(RTC_Set));  // Returns TRUE if successful
	
		IF(Status_RTC = 0)THEN	
			SetNewDateTime	:= 0;
			temp_var		:= 0;
		END_IF
	
	END_IF;
		
	// Login check
	//	FUNCTION FB_CheckCredentials
	// Credential check
	IF (InputUsername = 'Admin' AND InputPassword = '1234') THEN
		LoginSuccessful := TRUE;
		UserAccessLevel := 1;	// Full access
		CheckCredentials := TRUE;
		ErrorMessage := 'Logged in';
	ELSE
		LoginSuccessful := FALSE;
		UserAccessLevel := 0;	// No input access
		CheckCredentials := FALSE;
		ErrorMessage := 'Wrong user name or password';
	END_IF;
		
	ErrorMessage := '';   	// Clear any previous message
	InputUsername := '';	// Clear InputUsername field
	InputPassword := '';	// Clear InputPassword field
	
	IF(Alarm_new = 1)THEN
		Statusdp_alarm	:= 0;
	ELSE
		Statusdp_alarm	:= 1;
	END_IF
	
	
END_PROGRAM
