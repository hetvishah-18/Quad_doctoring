export AS_BUILD_MODE := BuildAndTransfer
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_BIN_PATH := C:/BrAutomation/AS412/bin-en
export AS_INSTALL_PATH := C:/BrAutomation/AS412
export AS_PATH := C:/BrAutomation/AS412
export AS_VC_PATH := C:/BrAutomation/AS412/AS/VC
export AS_GNU_INST_PATH := C:/BrAutomation/AS412/AS/gnuinst/V4.1.2
export AS_STATIC_ARCHIVES_PATH := D:/Projects/AS4/Tension\ Control/Doctor/Temp/Archives/Doctoring/4PPC70_0702_20B
export AS_CPU_PATH := D:/Projects/AS4/Tension\ Control/Doctor/Temp/Objects/Doctoring/4PPC70_0702_20B
export AS_CPU_PATH_2 := D:/Projects/AS4/Tension Control/Doctor/Temp/Objects/Doctoring/4PPC70_0702_20B
export AS_TEMP_PATH := D:/Projects/AS4/Tension\ Control/Doctor/Temp
export AS_BINARIES_PATH := D:/Projects/AS4/Tension\ Control/Doctor/Binaries
export AS_PROJECT_CPU_PATH := D:/Projects/AS4/Tension\ Control/Doctor/Physical/Doctoring/4PPC70_0702_20B
export AS_PROJECT_CONFIG_PATH := D:/Projects/AS4/Tension\ Control/Doctor/Physical/Doctoring
export AS_PROJECT_PATH := D:/Projects/AS4/Tension\ Control/Doctor
export AS_PROJECT_NAME := Doctor
export AS_PLC := 4PPC70_0702_20B
export AS_TEMP_PLC := 4PPC70_0702_20B
export AS_USER_NAME := FMI0240
export AS_CONFIGURATION := Doctoring
export AS_COMPANY_NAME := Hillenbrand
export AS_VERSION := 4.12.4.107\ SP
export AS_WORKINGVERSION := 4.12


default: \
	$(AS_CPU_PATH)/Vis.br \
	vcPostBuild_Vis \



include $(AS_CPU_PATH)/Vis/Vis.mak
