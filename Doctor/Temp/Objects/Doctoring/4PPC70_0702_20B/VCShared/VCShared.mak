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

DSOFLAGS=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)'
LIB_SHARED=$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcshared.vca

#
# Shared Runtime Options
#
VCRS_OBJECT=$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcrt_s.vco
VCRS_SOURCE=$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp

# All Shared Source Objects
VCR_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr 

TXTGRP_SHARED_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmAcknowledgeState.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmBypassState.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmEvent.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmState.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/DateTimeFormats.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/Seperator.txtgrp 

VCUG_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Mass.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Pressure.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Temperatures.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/LineVelocity.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/WinderVelocity.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Torque.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Time.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Force.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Volt_Bits.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/ConvBV.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/TwoDecVars.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/ThreeDecVar.vcug 

ALCFG_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/AlarmSystem.alcfg 

ALGRP_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/SystemAlarms.algrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/Alarms_MC.algrp 

DSO_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/VCShared/DataSources/Internal.dso \
	$(AS_PROJECT_PATH)/Logical/VCShared/DataSources/DataSource.dso 

CVINFO_SOURCES_Vis=$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo 



# UnitGroups
VCUG_OBJECTS_Vis = $(addprefix $(AS_CPU_PATH)/VCShared/vcug., $(notdir $(VCUG_SOURCES_Vis:.vcug=.vco)))

$(AS_CPU_PATH)/VCShared/vcug.Mass.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Mass.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Pressure.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Pressure.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Temperatures.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Temperatures.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.LineVelocity.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/LineVelocity.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.WinderVelocity.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/WinderVelocity.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Torque.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Torque.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Time.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Time.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Force.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Force.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Volt_Bits.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Volt_Bits.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.ConvBV.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/ConvBV.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.TwoDecVars.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/TwoDecVars.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/vcug.ThreeDecVar.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/ThreeDecVar.vcug
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#UnitGroups END




# AlarmGroups
ALGRP_OBJECTS_Vis = $(addprefix $(AS_CPU_PATH)/VCShared/algrp., $(notdir $(ALGRP_SOURCES_Vis:.algrp=.vco)))

$(AS_CPU_PATH)/VCShared/algrp.SystemAlarms.vco: $(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/SystemAlarms.algrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/algrp.Alarms_MC.vco: $(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/Alarms_MC.algrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#AlarmGroups END




# AlarmSystem
ALCFG_OBJECTS_Vis = $(addprefix $(AS_CPU_PATH)/VCShared/alcfg., $(notdir $(ALCFG_SOURCES_Vis:.alcfg=.vco)))

$(AS_CPU_PATH)/VCShared/alcfg.AlarmSystem.vco: $(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/AlarmSystem.alcfg
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#AlarmSystem END




# Text Groups
TXTGRP_SHARED_OBJECTS_Vis = $(addprefix $(AS_CPU_PATH)/VCShared/txtgrp., $(notdir $(TXTGRP_SHARED_SOURCES_Vis:.txtgrp=.vco)))

$(AS_CPU_PATH)/VCShared/txtgrp.AlarmAcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmAcknowledgeState.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.AlarmBypassState.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmBypassState.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmEvent.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmState.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.DateTimeFormats.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/DateTimeFormats.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.Seperator.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/Seperator.txtgrp $(VC_LANGUAGES_Vis)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Vis)' $(VCCFLAGS_Vis)  -p Vis -so $(VC_STATIC_OPTIONS_Vis) -vcr 4733 -sfas


#Text Groups END


#
# Datapoint Objects
#
$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.Internal.vco: $(AS_PROJECT_PATH)/Logical/VCShared/DataSources/Internal.dso 
	 $(VCC) -f '$<' -o '$@' $(DSOFLAGS) $(VCCFLAGS_Vis) -p Vis -vcr 4733 -sfas

$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.DataSource.vco: $(AS_PROJECT_PATH)/Logical/VCShared/DataSources/DataSource.dso 
	 $(VCC) -f '$<' -o '$@' $(DSOFLAGS) $(VCCFLAGS_Vis) -p Vis -vcr 4733 -sfas

DPT_OBJECTS = $(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dpt.DataPointList.vco
DSO_OBJECTS_Vis=$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.Internal.vco $(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.DataSource.vco 
$(DSO_OBJECTS_Vis): $(DSO_SOURCES_Vis)


#
# Building the Shared Runtime Options
#
$(VCRS_OBJECT) : $(VCRS_SOURCE)
	$(VCC) -f '$<' -o '$@' -ct shared -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl  $(VCCFLAGS_Vis) -p Vis -vcr 4733 -sfas

#
# The Shared Module
#
SHARED_MODULE=$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
SHARED_CCF=$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcshared.ccf
DEL_SHARED_CCF=$(TEMP_PATH_ROOT_Vis)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcshared.ccf.lfl

$(SHARED_MODULE) : $(SHARED_CCF)
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw '$(VCFIRMWAREPATH)' -m $(VCSTARTUP) -v V1.00.0 -vc '$(VCOBJECT_Vis)' -f '$<' -o '$@' -d vcgclass -profile 'False'

$(VCUG_OBJECTS_Vis): $(VC_LANGUAGES_Vis)
$(TXTGRP_SHARED_OBJECTS_Vis): $(VC_LANGUAGES_Vis)
$(ALGRP_OBJECTS_Vis): $(VC_LANGUAGES_Vis)
$(ALCFG_OBJECTS_Vis): $(VC_LANGUAGES_Vis)

$(SHARED_CCF): $(VCRS_OBJECT) $(VCR_OBJECTS_Vis) $(VCUG_OBJECTS_Vis) $(ALGRP_OBJECTS_Vis) $(ALCFG_OBJECTS_Vis) $(DSO_OBJECTS_Vis) $(TXTGRP_SHARED_OBJECTS_Vis) $(CVINFO_OBJECTS_Vis)
	-@CMD /Q /C if exist "$(DEL_SHARED_CCF)" DEL /F /Q "$(DEL_SHARED_CCF)" 2>nul
	 @$(VCFLGEN) '$@.lfl' '$(VCR_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)'
	 @$(VCFLGEN) '$@.lfl' -mask .vcug -vcp '$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp' -temp '$(TEMP_PATH_Shared)' -prj '$(PRJ_PATH_Vis)'
	 @$(VCFLGEN) '$@.lfl' -mask .algrp -vcp '$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp' -temp '$(TEMP_PATH_Shared)' -prj '$(PRJ_PATH_Vis)'
	 @$(VCFLGEN) '$@.lfl' '$(ALCFG_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)'
	 @$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp' -temp '$(TEMP_PATH_Shared)' -prj '$(PRJ_PATH_Vis)'
	 @$(VCFLGEN) '$@.lfl' '$(DSO_OBJECTS_Vis:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)'
	 @$(VCFLGEN) '$@.lfl' '$(DPT_OBJECTS:.vco=.vco|)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)'
	 @$(VCFLGEN) '$@.lfl' '$(VCRS_OBJECT)' -temp '$(TEMP_PATH_Vis)' -prj '$(PRJ_PATH_Vis)'
	 $(LINK) '$@.lfl' -o '$@' -lib '$(LIB_SHARED)' -P '$(AS_PROJECT_PATH)' -m 'shared resources' -profile 'False' -warningLevel2 -name Vis -vcr 4733 -sfas


$(LIB_SHARED): $(SHARED_CCF)
