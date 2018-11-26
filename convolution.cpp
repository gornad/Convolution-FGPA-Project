#include "convolution.h"

void fpga_convolution(int image[IMAGE_WIDTH*IMAGE_WIDTH], int kernel[KERNEL_WIDTH*KERNEL_WIDTH], int output[OUTPUT_WIDTH*OUTPUT_WIDTH]){
	#pragma HLS INTERFACE m_axi port=image offset=slave depth=65536
	#pragma HLS INTERFACE m_axi port=kernel offset=slave depth=121
	#pragma HLS INTERFACE m_axi port=output offset=slave depth=65536
	#pragma HLS INTERFACE s_axilite port=return

	// Perform your convolution here (i.e., set the correct values in the "output" array)
	int full_size = (IMAGE_WIDTH+KERNEL_WIDTH-1)*(IMAGE_WIDTH+KERNEL_WIDTH-1);	//size of the image with padding
	int padded_row = IMAGE_WIDTH+KERNEL_WIDTH-1; //length of each row with the adding
	int full_size_pad_row = (IMAGE_WIDTH+KERNEL_WIDTH-1) * IMAGE_WIDTH; //size of the image plus the pad but only on the end of the rows
	int temp[full_size]; //array to get the image and the pad
	int tempsum = 0; //to added up each position in the matrix
	int counter = 0; //to help store the location of the output
	int flag = 0; //used to help pad the rows in the image + pad
	int image_count = 0; //used to keep track of the image counter while padding


	//file IO to help with debugging
	//FILE *file;
	//file =fopen("log.txt", "w+");

	//To compute the right and bottom edges need to account for less than the kernel size.
	//To do so the rows and columns have been padded with zeros by the length of KERNEL_WIDTH - 1
	for(int pos = 0; pos < full_size_pad_row; pos++){

		//if flag is 256 then need to add KERNEL_WIDTH - 1 zeros
		if(flag > IMAGE_WIDTH-1){
			for(int zeros = 0; zeros < (KERNEL_WIDTH - 1); zeros++){
				temp[pos] = 0;
				pos++;
			}

			//set the flag back to -1 for the next runs
			flag = -1;

			//move one position back due to extra ++
			pos--;
		}else{
			temp[pos] = image[image_count];
			image_count++;
		}
		flag++;
	}

	//now add the rows at the bottom (KERNEL_WIDTH - 1)
	for(int pos = full_size_pad_row; pos < full_size; pos++){
		temp[pos] = 0;
	}

	//Reinitialize flag
	flag = 0;

	//Perform the convolution operation
	//First Loop goes through every position in the image

	for(int position=0; position< (full_size_pad_row-KERNEL_WIDTH+1); position++) {


		if(flag>IMAGE_WIDTH-1) {
			flag = 0;
			position+=KERNEL_WIDTH-1;
		}

		//Next two for loop go through the kernel and perform the operation according ly
		for(int column=0; column<KERNEL_WIDTH; column++) {
			for(int row=0; row<KERNEL_WIDTH; row++) {
				tempsum += temp[position+row*padded_row+column]*kernel[row*KERNEL_WIDTH + column];
			}
		}

		output[counter] = tempsum;
		counter++;
		tempsum=0;

		flag++;

	}

	//for (int i = 0; i < IMAGE_WIDTH*IMAGE_WIDTH; i++) {
	//	fprintf(file, "output[%d]: %d\n",i,output[i]);
	//}

	return; // Don't remove or add any of your own returns
}

