#ifndef __TEST_H__
#define __TEST_H__

#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "globals.h"
#include "convolution.h"

// Inputs to fpga_convolution function
int Image[IMAGE_WIDTH*IMAGE_WIDTH];
int Kernel[KERNEL_WIDTH*KERNEL_WIDTH];
int Output[OUTPUT_WIDTH*OUTPUT_WIDTH];


// Function headers
void test_convolution(); // Test fpga_convolution function
void initializeArrays();

#endif //__TEST_H__
