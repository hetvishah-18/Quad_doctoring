######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@'$(AS_BIN_PATH)/br.vc.pc.exe'
LINK:=@'$(AS_BIN_PATH)/BR.VC.Link.exe'
MODGEN:=@'$(AS_BIN_PATH)/BR.VC.ModGen.exe'
VCPL:=@'$(AS_BIN_PATH)/BR.VC.PL.exe'
VCHWPP:=@'$(AS_BIN_PATH)/BR.VC.HWPP.exe'
VCDEP:=@'$(AS_BIN_PATH)/BR.VC.Depend.exe'
VCFLGEN:=@'$(AS_BIN_PATH)/BR.VC.lfgen.exe'
VCREFHANDLER:=@'$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe'
VCXREFEXTENDER:=@'$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe'
RM=CMD /C DEL
PALFILE_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Palette.vcr
VCCFLAGS_Vis=-server -proj Vis -vc '$(AS_PROJECT_PATH)/Logical/Vis/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.73.3
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.73.3/SG4
VCOBJECT_Vis=$(AS_PROJECT_PATH)/Logical/Vis/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_Vis=$(AS_CPU_PATH)/Vis.br
OBJ_SCOPE_Vis=
PRJ_PATH_Vis=$(AS_PROJECT_PATH)
SRC_PATH_Vis=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Vis)/Vis
TEMP_PATH_Vis=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Vis
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Vis=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Vis=$(TEMP_PATH_Vis)/libraries.vci
VC_XREF_BUILDFILE_Vis=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Vis=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_Vis)/cpuhwc.vci'
VC_STATIC_OPTIONS_Vis='$(TEMP_PATH_Vis)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_Vis.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_Vis=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_Vis='Source[local].StyleSheet[Default]'
SHARED_MODULE=$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_Vis=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)'
BDRFLAGS_Vis=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)'

# Local Libs
LIB_LOCAL_OBJ_Vis=$(TEMP_PATH_Vis)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_Vis=$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Vis/dis.Hardware.vco
PANEL_HW_VCI_Vis=$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Vis/dis.Hardware.vci
PANEL_HW_SOURCE_Vis=C:/Projects/Doctor/Doctor/Physical/Doctoring/Hardware.hw 
DIS_OBJECTS_Vis=$(PANEL_HW_OBJECT_Vis) $(KEYMAP_OBJECTS_Vis)

# KeyMapping flags
$(TEMP_PATH_Vis)/dis.PS2-Keyboard.vco: $(AS_PROJECT_PATH)/Physical/Doctoring/4PPC70_0702_20B/VC/PS2-Keyboard.dis $(PANEL_HW_SOURCE_Vis)
	$(VCHWPP) -f '$(PANEL_HW_SOURCE_Vis)' -o '$(subst .vco,.vci,$(TEMP_PATH_Vis)/dis.PS2-Keyboard.vco)' -n Vis -d Vis -pal '$(PALFILE_Vis)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'J4.93' -L 'vclib: V*, visapi: V*' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_Vis) -sos $(VC_STATIC_OPTIONS_Shared) -keyboard '$(AS_PROJECT_PATH)/Physical/Doctoring/4PPC70_0702_20B/VC/PS2-Keyboard.dis' -fp '$(AS_VC_PATH)/Firmware/V4.73.3/SG4' -prj '$(AS_PROJECT_PATH)' -apj 'Doctor' -sfas -vcob '$(VCOBJECT_Vis)'
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_Vis)' $(VCCFLAGS_Vis) -p Vis -sfas

KEYMAP_SOURCES_Vis=$(AS_PROJECT_PATH)/Physical/Doctoring/4PPC70_0702_20B/VC/4PPC70_0702_20B.dis $(AS_PROJECT_PATH)/Physical/Doctoring/4PPC70_0702_20B/VC/PS2-Keyboard.dis 
KEYMAP_OBJECTS_Vis=$(TEMP_PATH_Vis)/dis.PS2-Keyboard.vco 

# All Source Objects
TXTGRP_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/InstantMessages.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/HeaderBar.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/PageNames.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/Buttons_PageTexts.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/Languages.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/NumPad_Limits.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DateTimeFormats.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/httpURL_SDM.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/AnalogOutput.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/AnalogInput1.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/AnalogInput2.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DigitalInput1.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DigitalInput2.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DigitalOutput1.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DigitalOutput2.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/Encoder_Inp.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/MotorControl.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/MotorDropDown.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/TextGroups/PIDControl.txtgrp 

FNINFO_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Info.fninfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Html_SDM.fninfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Default.fninfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Header.fninfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Button.fninfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Input_Normal.fninfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Status.fninfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Pads.fninfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Input_Bold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Fonts/Big_Fonts.fninfo 

BMINFO_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_BypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_BypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Inactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Latched.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_NotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Quit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/alarm.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_checked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_default.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_default_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_global_area.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/information.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_left.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down_multi_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up_multi_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_radio_selected.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_radio.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_right.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/warning.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_decrease_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_increase.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_increase_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_decrease.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_small_checked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/BorderSlider09x09.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Slider_BallGray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/gauge_200x200_round_nodiv.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/gauge_NeedleRed100x11_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_small_gray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/FrameInvisible.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_off.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_on.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_ready.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_error.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/BackTransparent.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_Numpad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_Numpad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_lower.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_upper.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numeric.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numeric2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_lowerPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_upperPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numericPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numeric2Pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_lower.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_upper.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numeric.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numeric2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_lowerPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_upperPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numericPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numeric2Pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/InputBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/OutputBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/LabelBoarder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/GroupControl.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Config.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Diagnostics.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Home.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Trend.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Warning.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_control_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/BackgroundWSVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/logo.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Company_Details.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Company_Details2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Doctor_Printing.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Simulation4.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Scale.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Motor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/AlarmHist.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/test_Doctor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Doctor2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/AlarmHist3.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_New.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Home.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Diag.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Setup.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Trend.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Motor_New.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/chart.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Off.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_On.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Credential.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Back.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Next.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/led_gray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/led_green.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/winder_unwinder2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/winder_unwinder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Input.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/logo2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/led_red.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Off_Button.bminfo \
	$(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/On_Button.bminfo 

BMGRP_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/AlarmAcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/AlarmBypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Borders.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/GlobalArea.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Pads.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/msgBox.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Alarm_Blink.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Input.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Output.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Winder_Simulation.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/ON_OFF.bmgrp 

PAGE_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Pages/HomePage.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/Setup.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/TrendPage.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/AlarmPage.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/AlarmHistoryPage.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/Welcome.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/MotorControl.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/Factory.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/Credentials.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/Factory1.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/Factory2.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/IO_Page1.page \
	$(AS_PROJECT_PATH)/Logical/Vis/Pages/Factory3.page 

LAYER_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Layers/globalArea.layer \
	$(AS_PROJECT_PATH)/Logical/Vis/Layers/msgBox.layer \
	$(AS_PROJECT_PATH)/Logical/Vis/Layers/Background.layer 

VCS_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/StyleSheets/Default.vcs 

BDR_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Decrease.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Decrease_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Global_Area.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Global_Area_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Increase.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Increase_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Multi_Scroll_Down.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Multi_Scroll_Down_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Multi_Scroll_Up.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Multi_Scroll_Up_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Radio.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Radio_selected.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scoll_Up.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scoll_Up_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Down.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Down_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Left.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Left_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Right.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Right_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/SunkenNG.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/CheckBox_checked.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/OverdriveBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/SliderBorder09.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/SunkenNGgray.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/FrameGlobal.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/FrameInvisible.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_KeyRingOff.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_KeyRingOn.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/OutputBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/InputBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/GroupControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/LabelBoarder.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Control.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Control_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Vis/Borders/TabActive.bdr 

TPR_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Vis/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Vis/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/Vis/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/Vis/TouchPads/EditPad.tpr 

TDC_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Trends/TrendData.tdc 

TRD_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Trends/CPUTemperature.trd \
	$(AS_PROJECT_PATH)/Logical/Vis/Trends/ROOMTemperature.trd \
	$(AS_PROJECT_PATH)/Logical/Vis/Trends/ActualMPM.trd \
	$(AS_PROJECT_PATH)/Logical/Vis/Trends/SetMPM.trd \
	$(AS_PROJECT_PATH)/Logical/Vis/Trends/ActualTension.trd \
	$(AS_PROJECT_PATH)/Logical/Vis/Trends/SetTension.trd 

VCVK_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/VirtualKeys.vcvk 

VCR_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_Vis=$(TEMP_PATH_Vis)/vcrt.vco
VCR_SOURCE_Vis=$(SRC_PATH_Vis)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_Vis): $(PANEL_HW_SOURCE_Vis) $(VC_LIBRARY_LIST_Vis) $(KEYMAP_SOURCES_Vis) $(PALFILE_Vis)
	$(VCHWPP) -f '$<' -o '$@' -n Vis -d Vis -pal '$(PALFILE_Vis)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'J4.93' -L 'vclib: V*, visapi: V*' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_Vis) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.73.3/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'Doctor' -vcob '$(VCOBJECT_Vis)'

$(PANEL_HW_OBJECT_Vis): $(PANEL_HW_VCI_Vis) $(VC_LIBRARY_LIST_Vis)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_Vis)' $(VCCFLAGS_Vis) -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


# Pages
PAGE_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/page., $(notdir $(PAGE_SOURCES_Vis:.page=.vco)))

$(TEMP_PATH_Vis)/page.HomePage.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/HomePage.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.Setup.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/Setup.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.TrendPage.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/TrendPage.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.AlarmPage.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/AlarmPage.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.AlarmHistoryPage.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/AlarmHistoryPage.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.Welcome.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/Welcome.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.MotorControl.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/MotorControl.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.Factory.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/Factory.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.Credentials.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/Credentials.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.Factory1.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/Factory1.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.Factory2.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/Factory2.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.IO_Page1.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/IO_Page1.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/page.Factory3.vco: $(AS_PROJECT_PATH)/Logical/Vis/Pages/Factory3.page $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Vis)/StyleSheets/Default.vcs' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/vcs., $(notdir $(VCS_SOURCES_Vis:.vcs=.vco)))

$(TEMP_PATH_Vis)/vcs.Default.vco: $(AS_PROJECT_PATH)/Logical/Vis/StyleSheets/Default.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_Vis) -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#Stylesheets END




# Layers
LAYER_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/layer., $(notdir $(LAYER_SOURCES_Vis:.layer=.vco)))

$(TEMP_PATH_Vis)/layer.globalArea.vco: $(AS_PROJECT_PATH)/Logical/Vis/Layers/globalArea.layer $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -ds $(DEFAULT_STYLE_SHEET_Vis) -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/layer.msgBox.vco: $(AS_PROJECT_PATH)/Logical/Vis/Layers/msgBox.layer $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -ds $(DEFAULT_STYLE_SHEET_Vis) -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/layer.Background.vco: $(AS_PROJECT_PATH)/Logical/Vis/Layers/Background.layer $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -ds $(DEFAULT_STYLE_SHEET_Vis) -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#Layers END




# Virtual Keys
VCVK_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/vcvk., $(notdir $(VCVK_SOURCES_Vis:.vcvk=.vco)))

$(TEMP_PATH_Vis)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/Vis/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas

$(VCVK_OBJECTS_Vis): $(VC_LANGUAGES_Vis)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/tpr., $(notdir $(TPR_SOURCES_Vis:.tpr=.vco)))

$(TEMP_PATH_Vis)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Vis/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -prj 'C:/Projects/Doctor/Doctor/Logical/Vis' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Vis/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -prj 'C:/Projects/Doctor/Doctor/Logical/Vis' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/Vis/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -prj 'C:/Projects/Doctor/Doctor/Logical/Vis' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/Vis/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -prj 'C:/Projects/Doctor/Doctor/Logical/Vis' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/Vis/TouchPads/EditPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis) -prj 'C:/Projects/Doctor/Doctor/Logical/Vis' -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#Touch Pads END




# Text Groups
TXTGRP_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/txtgrp., $(notdir $(TXTGRP_SOURCES_Vis:.txtgrp=.vco)))

$(TEMP_PATH_Vis)/txtgrp.InstantMessages.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/InstantMessages.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.HeaderBar.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/HeaderBar.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.PageNames.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/PageNames.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.Buttons_PageTexts.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/Buttons_PageTexts.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.Languages.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/Languages.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.NumPad_Limits.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/NumPad_Limits.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.DateTimeFormats.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DateTimeFormats.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.httpURL_SDM.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/httpURL_SDM.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.AnalogOutput.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/AnalogOutput.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.AnalogInput1.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/AnalogInput1.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.AnalogInput2.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/AnalogInput2.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.DigitalInput1.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DigitalInput1.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.DigitalInput2.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DigitalInput2.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.DigitalOutput1.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DigitalOutput1.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.DigitalOutput2.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/DigitalOutput2.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.Encoder_Inp.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/Encoder_Inp.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.MotorControl.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/MotorControl.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.MotorDropDown.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/MotorDropDown.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/txtgrp.PIDControl.vco: $(AS_PROJECT_PATH)/Logical/Vis/TextGroups/PIDControl.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#Text Groups END




# BitmapGroups
BMGRP_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/bmgrp., $(notdir $(BMGRP_SOURCES_Vis:.bmgrp=.vco)))

$(TEMP_PATH_Vis)/bmgrp.AlarmAcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/AlarmAcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.AlarmBypassState.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/AlarmBypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.GlobalArea.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/GlobalArea.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.Pads.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Pads.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.msgBox.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/msgBox.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.Alarm_Blink.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Alarm_Blink.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.Input.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Input.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.Output.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Output.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.Winder_Simulation.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/Winder_Simulation.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bmgrp.ON_OFF.vco: $(AS_PROJECT_PATH)/Logical/Vis/BitmapGroups/ON_OFF.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/bminfo., $(notdir $(BMINFO_SOURCES_Vis:.bminfo=.vco)))

$(TEMP_PATH_Vis)/bminfo.Alarm_AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_AcknowledgeReset.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_Active.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Active.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Active.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_BypassOFF.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_BypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_BypassOFF.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_BypassON.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_BypassON.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_BypassON.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_Inactive.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Inactive.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Inactive.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_Latched.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Latched.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Latched.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_NotQuit.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_NotQuit.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_NotQuit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_Quit.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Quit.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Quit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_Reset.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Reset.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Reset.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_ResetAcknowledge.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_Triggered.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Triggered.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Triggered.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/ProgressBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.alarm.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/alarm.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/alarm.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.checkbox.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.checkbox_checked.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_checked.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_checked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_default.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_default.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_default.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_default_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_default_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_default_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_down.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_global_area.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_global_area.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_global_area.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_global_area_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.information.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/information.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/information.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_left.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_left.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_left.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_left_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_left_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_down_multi.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down_multi.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_down_multi_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down_multi_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down_multi_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_up_multi.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up_multi.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_up_multi_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up_multi_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up_multi_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_radio_selected.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_radio_selected.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_radio_selected.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_radio.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_radio.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_radio.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_right.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_right.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_right.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_right_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_right_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_up.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_up_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.warning.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/warning.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/warning.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_decrease_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_decrease_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_decrease_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_increase.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_increase.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_increase.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_increase_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_increase_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_increase_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_decrease.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_decrease.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_decrease.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/frame_header.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.checkbox_small.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_small.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.checkbox_small_checked.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_small_checked.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_small_checked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.BorderSlider09x09.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/BorderSlider09x09.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/BorderSlider09x09.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Slider_BallGray.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Slider_BallGray.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Slider_BallGray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.gauge_200x200_round_nodiv.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/gauge_200x200_round_nodiv.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/gauge_200x200_round_nodiv.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.gauge_NeedleRed100x11_1.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/gauge_NeedleRed100x11_1.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/gauge_NeedleRed100x11_1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.checkbox_small_gray.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_small_gray.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/checkbox_small_gray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.FrameInvisible.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/FrameInvisible.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/FrameInvisible.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_off.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_off.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_off.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_on.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_on.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_on.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_ready.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_ready.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_ready.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_error.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_error.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_error.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.BackTransparent.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/BackTransparent.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/BackTransparent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_Numpad.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_Numpad.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_Numpad.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_Numpad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_Numpad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_Numpad_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_AlphaPad_lower.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_lower.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_lower.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_AlphaPad_upper.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_upper.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_upper.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_AlphaPad_numeric.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numeric.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numeric.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_AlphaPad_numeric2.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numeric2.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numeric2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_AlphaPad_lowerPressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_lowerPressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_lowerPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_AlphaPad_upperPressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_upperPressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_upperPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_AlphaPad_numericPressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numericPressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numericPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_AlphaPad_numeric2Pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numeric2Pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_AlphaPad_numeric2Pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadVer.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadVer_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadHor.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_ListPadHor_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_EditPad_lower.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_lower.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_lower.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_EditPad_upper.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_upper.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_upper.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_EditPad_numeric.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numeric.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numeric.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_EditPad_numeric2.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numeric2.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numeric2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_EditPad_lowerPressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_lowerPressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_lowerPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_EditPad_upperPressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_upperPressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_upperPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_EditPad_numericPressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numericPressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numericPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Key_EditPad_numeric2Pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numeric2Pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Key_EditPad_numeric2Pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.InputBorder.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/InputBorder.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/InputBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_scroll_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_scroll_down_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.OutputBorder.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/OutputBorder.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/OutputBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.LabelBoarder.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/LabelBoarder.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/LabelBoarder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.GroupControl.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/GroupControl.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/GroupControl.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Img_Config.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Config.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Config.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Img_Diagnostics.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Diagnostics.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Diagnostics.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Img_Home.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Home.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Home.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Img_Trend.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Trend.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Trend.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Img_Warning.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Warning.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Img_Warning.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_control.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_control.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_control.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.button_control_pressed.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_control_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/button_control_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.BackgroundWSVGA.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/BackgroundWSVGA.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/BackgroundWSVGA.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.logo.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/logo.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/logo.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Company_Details.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Company_Details.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Company_Details.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Company_Details2.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Company_Details2.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Company_Details2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Doctor_Printing.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Doctor_Printing.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Doctor_Printing.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Simulation4.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Simulation4.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Simulation4.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Scale.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Scale.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Scale.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Motor.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Motor.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Motor.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.AlarmHist.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/AlarmHist.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/AlarmHist.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.test_Doctor.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/test_Doctor.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/test_Doctor.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Doctor2.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Doctor2.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Doctor2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.AlarmHist3.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/AlarmHist3.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/AlarmHist3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_New.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_New.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_New.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Home.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Home.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Home.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Diag.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Diag.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Diag.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Setup.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Setup.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Setup.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Trend.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Trend.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Trend.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Motor_New.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Motor_New.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Motor_New.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.chart.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/chart.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/chart.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_Off.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Off.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_Off.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Alarm_On.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_On.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Alarm_On.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Credential.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Credential.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Credential.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Back.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Back.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Back.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Next.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Next.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Next.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.led_gray.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/led_gray.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/led_gray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.led_green.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/led_green.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/led_green.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.winder_unwinder2.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/winder_unwinder2.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/winder_unwinder2.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.winder_unwinder.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/winder_unwinder.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/winder_unwinder.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Input.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Input.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Input.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.logo2.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/logo2.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/logo2.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.led_red.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/led_red.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/led_red.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.Off_Button.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Off_Button.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/Off_Button.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/bminfo.On_Button.vco: $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/On_Button.bminfo $(AS_PROJECT_PATH)/Logical/Vis/Bitmaps/On_Button.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#Bitmaps END




# Trend Data
TRD_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/trd., $(notdir $(TRD_SOURCES_Vis:.trd=.vco)))

$(TEMP_PATH_Vis)/trd.CPUTemperature.vco: $(AS_PROJECT_PATH)/Logical/Vis/Trends/CPUTemperature.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/trd.ROOMTemperature.vco: $(AS_PROJECT_PATH)/Logical/Vis/Trends/ROOMTemperature.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/trd.ActualMPM.vco: $(AS_PROJECT_PATH)/Logical/Vis/Trends/ActualMPM.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/trd.SetMPM.vco: $(AS_PROJECT_PATH)/Logical/Vis/Trends/SetMPM.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/trd.ActualTension.vco: $(AS_PROJECT_PATH)/Logical/Vis/Trends/ActualTension.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(TEMP_PATH_Vis)/trd.SetTension.vco: $(AS_PROJECT_PATH)/Logical/Vis/Trends/SetTension.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#Trend Data END




# Trend Data Configuration
TDC_OBJECTS_Vis = $(addprefix $(TEMP_PATH_Vis)/tdc., $(notdir $(TDC_SOURCES_Vis:.tdc=.vco)))

$(TEMP_PATH_Vis)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/Vis/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/Vis/Borders/Button.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Decrease.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Decrease_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Global_Area.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Global_Area_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Increase.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Increase_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Multi_Scroll_Down.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Multi_Scroll_Down_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Multi_Scroll_Up.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Multi_Scroll_Up_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Radio.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Radio_selected.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scoll_Up.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scoll_Up_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Down.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Down_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Left.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Left_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Right.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Scroll_Right_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/SunkenNG.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/CheckBox_checked.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/OverdriveBorder.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/SliderBorder09.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/SunkenNGgray.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/FrameGlobal.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/FrameInvisible.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_KeyRingOff.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_KeyRingOn.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/OutputBorder.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/InputBorder.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/GroupControl.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/LabelBoarder.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Control.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/Button_Control_pressed.bdr $(AS_PROJECT_PATH)/Logical/Vis/Borders/TabActive.bdr 
BDR_OBJECTS_Vis=$(TEMP_PATH_Vis)/bdr.Bordermanager.vco
$(TEMP_PATH_Vis)/bdr.Bordermanager.vco: $(BDR_SOURCES_Vis)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_Vis)' $(BDRFLAGS_Vis) $(VCCFLAGS_Vis) -p Vis$(SRC_PATH_Vis)
#
# Logical fonts
#
$(TEMP_PATH_Vis)/lfnt.en.vco: $(TEMP_PATH_Vis)/en.lfnt $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Vis) $(VCCFLAGS_Vis) -p Vis -sfas
$(TEMP_PATH_Vis)/lfnt.de.vco: $(TEMP_PATH_Vis)/de.lfnt $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Vis) $(VCCFLAGS_Vis) -p Vis -sfas
LFNT_OBJECTS_Vis=$(TEMP_PATH_Vis)/lfnt.en.vco $(TEMP_PATH_Vis)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_Vis) : $(VCR_SOURCE_Vis)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_Vis) -rt  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas
# Local resources Library rules
LIB_LOCAL_RES_Vis=$(TEMP_PATH_Vis)/localres.vca
$(LIB_LOCAL_RES_Vis) : $(TEMP_PATH_Vis)/Vis02.ccf

# Bitmap Library rules
LIB_BMP_RES_Vis=$(TEMP_PATH_Vis)/bmpres.vca
$(LIB_BMP_RES_Vis) : $(TEMP_PATH_Vis)/Vis03.ccf
$(BMGRP_OBJECTS_Vis) : $(PALFILE_Vis) $(VC_LANGUAGES_Vis)
$(BMINFO_OBJECTS_Vis) : $(PALFILE_Vis)

BUILD_FILE_Vis=$(TEMP_PATH_Vis)/BuildFiles.arg
$(BUILD_FILE_Vis) : BUILD_FILE_CLEAN_Vis $(BUILD_SOURCES_Vis)
BUILD_FILE_CLEAN_Vis:
	$(RM) /F /Q '$(BUILD_FILE_Vis)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_Vis=$(AS_CPU_PATH)/Vis01.br $(AS_CPU_PATH)/Vis02.br $(AS_CPU_PATH)/Vis03.br $(FONT_MODULES_Vis) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_Vis): $(PROJECT_MODULES_Vis) $(TEMP_PATH_Vis)/Vis.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vis) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_Vis)/Vis.prj' -o '$@' -vc '$(VCOBJECT_Vis)' $(DEPENDENCIES_Vis) $(addprefix -d ,$(notdir $(PROJECT_MODULES_Vis:.br=)))

$(AS_CPU_PATH)/Vis01.br: $(TEMP_PATH_Vis)/Vis01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vis) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Vis)' -f '$<' -o '$@' $(DEPENDENCIES_Vis)

$(AS_CPU_PATH)/Vis02.br: $(TEMP_PATH_Vis)/Vis02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vis) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Vis)' -f '$<' -o '$@' $(DEPENDENCIES_Vis)

$(AS_CPU_PATH)/Vis03.br: $(TEMP_PATH_Vis)/Vis03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Vis) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Vis)' -f '$<' -o '$@' $(DEPENDENCIES_Vis)

# General Build rules END
$(LIB_LOCAL_OBJ_Vis) : $(TEMP_PATH_Vis)/Vis01.ccf

# Main Module
$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vis.vcm:
$(TEMP_PATH_Vis)/Vis.prj: $(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vis.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vis.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_Vis) -o Vis -proj Vis
	$(VCPL) $(notdir $(PROJECT_MODULES_Vis:.br=,4)) Vis,2 -o '$@' -p Vis -vc 'Vis' -verbose 'False' -fl '$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Vis.vcm' -vcr '$(VCR_SOURCE_Vis)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_Vis=$(TEMP_PATH_Vis)\Vis01.ccf.lfl
$(TEMP_PATH_Vis)/Vis01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Vis) $(TEMP_PATH_Vis)/Vis03.ccf $(LIB_LOCAL_RES_Vis) $(TEMP_PATH_Vis)/Vis02.ccf $(DIS_OBJECTS_Vis) $(PAGE_OBJECTS_Vis) $(VCS_OBJECTS_Vis) $(VCVK_OBJECTS_Vis) $(VCRT_OBJECTS_Vis) $(TPR_OBJECTS_Vis) $(TXTGRP_OBJECTS_Vis) $(LAYER_OBJECTS_Vis) $(VCR_OBJECT_Vis) $(TDC_OBJECTS_Vis) $(TRD_OBJECTS_Vis) $(TRE_OBJECTS_Vis) $(PRC_OBJECTS_Vis) $(SCR_OBJECTS_Vis)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_Vis)" DEL /F /Q "$(DEL_TARGET01_LFL_Vis)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Vis)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_Vis)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/Vis/Package.vcp' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/Vis/Package.vcp' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/Vis/Package.vcp' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/Vis/Package.vcp' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/Vis/Package.vcp' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/Vis/Package.vcp' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Vis -lib '$(LIB_LOCAL_OBJ_Vis)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4733 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_Vis=$(TEMP_PATH_Vis)\Vis02.ccf.lfl
$(TEMP_PATH_Vis)/Vis02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Vis) $(TEMP_PATH_Vis)/Vis03.ccf $(BDR_OBJECTS_Vis) $(LFNT_OBJECTS_Vis) $(CLM_OBJECTS_Vis)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_Vis)" DEL /F /Q "$(DEL_TARGET02_LFL_Vis)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Vis)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Vis -lib '$(LIB_LOCAL_RES_Vis)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4733 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_Vis=$(TEMP_PATH_Vis)\Vis03.ccf.lfl
$(TEMP_PATH_Vis)/Vis03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_Vis) $(BMINFO_OBJECTS_Vis) $(PALFILE_Vis)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_Vis)" DEL /F /Q "$(DEL_TARGET03_LFL_Vis)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/Vis/Package.vcp' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/Vis/Package.vcp' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Vis -lib '$(LIB_BMP_RES_Vis)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4733 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_Vis

vcPostBuild_Vis :
	$(VCC) -pb -vcm '$(TEMP_PATH_Vis)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_Vis) -p Vis -vcr 4733 -sfas

# Post Build Steps END
