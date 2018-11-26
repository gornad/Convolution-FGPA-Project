################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../test.cpp 

OBJS += \
./testbench/test.o 

CPP_DEPS += \
./testbench/test.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/test.o: C:/LAB4/test.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado_HLS/2017.2/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2017.2/include/ap_sysc -IC:/ -IC:/Xilinx/Vivado_HLS/2017.2/include/etc -IC:/Xilinx/Vivado_HLS/2017.2/win64/tools/auto_cc/include -IC:/Xilinx/Vivado_HLS/2017.2/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


