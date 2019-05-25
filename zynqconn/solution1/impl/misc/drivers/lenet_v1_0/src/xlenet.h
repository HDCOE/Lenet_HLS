// ==============================================================
// File generated on Fri May 24 00:16:07 +03 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLENET_H
#define XLENET_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xlenet_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtl_bus_BaseAddress;
} XLenet_Config;
#endif

typedef struct {
    u32 Crtl_bus_BaseAddress;
    u32 IsReady;
} XLenet;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLenet_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLenet_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLenet_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLenet_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XLenet_Initialize(XLenet *InstancePtr, u16 DeviceId);
XLenet_Config* XLenet_LookupConfig(u16 DeviceId);
int XLenet_CfgInitialize(XLenet *InstancePtr, XLenet_Config *ConfigPtr);
#else
int XLenet_Initialize(XLenet *InstancePtr, const char* InstanceName);
int XLenet_Release(XLenet *InstancePtr);
#endif

void XLenet_Start(XLenet *InstancePtr);
u32 XLenet_IsDone(XLenet *InstancePtr);
u32 XLenet_IsIdle(XLenet *InstancePtr);
u32 XLenet_IsReady(XLenet *InstancePtr);
void XLenet_EnableAutoRestart(XLenet *InstancePtr);
void XLenet_DisableAutoRestart(XLenet *InstancePtr);
u32 XLenet_Get_return(XLenet *InstancePtr);

void XLenet_Set_start(XLenet *InstancePtr, u32 Data);
u32 XLenet_Get_start(XLenet *InstancePtr);

void XLenet_InterruptGlobalEnable(XLenet *InstancePtr);
void XLenet_InterruptGlobalDisable(XLenet *InstancePtr);
void XLenet_InterruptEnable(XLenet *InstancePtr, u32 Mask);
void XLenet_InterruptDisable(XLenet *InstancePtr, u32 Mask);
void XLenet_InterruptClear(XLenet *InstancePtr, u32 Mask);
u32 XLenet_InterruptGetEnabled(XLenet *InstancePtr);
u32 XLenet_InterruptGetStatus(XLenet *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
