// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XFPGA_CONVOLUTION_H
#define XFPGA_CONVOLUTION_H

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
#include "xfpga_convolution_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XFpga_convolution_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XFpga_convolution;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFpga_convolution_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFpga_convolution_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFpga_convolution_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFpga_convolution_ReadReg(BaseAddress, RegOffset) \
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
int XFpga_convolution_Initialize(XFpga_convolution *InstancePtr, u16 DeviceId);
XFpga_convolution_Config* XFpga_convolution_LookupConfig(u16 DeviceId);
int XFpga_convolution_CfgInitialize(XFpga_convolution *InstancePtr, XFpga_convolution_Config *ConfigPtr);
#else
int XFpga_convolution_Initialize(XFpga_convolution *InstancePtr, const char* InstanceName);
int XFpga_convolution_Release(XFpga_convolution *InstancePtr);
#endif

void XFpga_convolution_Start(XFpga_convolution *InstancePtr);
u32 XFpga_convolution_IsDone(XFpga_convolution *InstancePtr);
u32 XFpga_convolution_IsIdle(XFpga_convolution *InstancePtr);
u32 XFpga_convolution_IsReady(XFpga_convolution *InstancePtr);
void XFpga_convolution_EnableAutoRestart(XFpga_convolution *InstancePtr);
void XFpga_convolution_DisableAutoRestart(XFpga_convolution *InstancePtr);

void XFpga_convolution_Set_image_r(XFpga_convolution *InstancePtr, u32 Data);
u32 XFpga_convolution_Get_image_r(XFpga_convolution *InstancePtr);
void XFpga_convolution_Set_kernel(XFpga_convolution *InstancePtr, u32 Data);
u32 XFpga_convolution_Get_kernel(XFpga_convolution *InstancePtr);
void XFpga_convolution_Set_output_r(XFpga_convolution *InstancePtr, u32 Data);
u32 XFpga_convolution_Get_output_r(XFpga_convolution *InstancePtr);

void XFpga_convolution_InterruptGlobalEnable(XFpga_convolution *InstancePtr);
void XFpga_convolution_InterruptGlobalDisable(XFpga_convolution *InstancePtr);
void XFpga_convolution_InterruptEnable(XFpga_convolution *InstancePtr, u32 Mask);
void XFpga_convolution_InterruptDisable(XFpga_convolution *InstancePtr, u32 Mask);
void XFpga_convolution_InterruptClear(XFpga_convolution *InstancePtr, u32 Mask);
u32 XFpga_convolution_InterruptGetEnabled(XFpga_convolution *InstancePtr);
u32 XFpga_convolution_InterruptGetStatus(XFpga_convolution *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
