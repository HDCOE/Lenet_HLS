// ==============================================================
// File generated on Fri May 24 00:16:07 +03 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlenet.h"

extern XLenet_Config XLenet_ConfigTable[];

XLenet_Config *XLenet_LookupConfig(u16 DeviceId) {
	XLenet_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLENET_NUM_INSTANCES; Index++) {
		if (XLenet_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLenet_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLenet_Initialize(XLenet *InstancePtr, u16 DeviceId) {
	XLenet_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLenet_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLenet_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

