#include "test.h"

int main(void)
{
    test_convolution();
    return 0;
}

void test_convolution()
{
	initializeArrays();

	fpga_convolution(Image, Kernel, Output);

	for (int i = 0; i < OUTPUT_WIDTH*OUTPUT_WIDTH; i++) {
		printf("output[%d]: %d\n",i,Output[i]);
	}
}

void initializeArrays() {
	for(int i = 0; i < IMAGE_WIDTH*IMAGE_WIDTH; i++) {
		Image[i] = 1;
	}
	for(int i = 0; i < KERNEL_WIDTH*KERNEL_WIDTH; i++) {
		Kernel[i] = 1;
	}
	for(int i = 0; i < OUTPUT_WIDTH*OUTPUT_WIDTH; i++) {
		Output[i] = 0;
	}
}
