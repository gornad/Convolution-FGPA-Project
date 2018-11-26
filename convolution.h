#ifndef __CONVOLUTION_H__
#define __CONVOLUTION_H__

#include <stdbool.h>
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "globals.h"

void fpga_convolution(int image[IMAGE_WIDTH*IMAGE_WIDTH], int kernel[KERNEL_WIDTH*KERNEL_WIDTH], int output[OUTPUT_WIDTH*OUTPUT_WIDTH]);

#endif //__CONVOLUTION_H__


