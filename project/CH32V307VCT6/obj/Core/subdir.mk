################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/core_riscv.c 

OBJS += \
./Core/core_riscv.o 

C_DEPS += \
./Core/core_riscv.d 


# Each subdirectory must supply rules for building sources it contributes
Core/%.o: ../Core/%.c
	@	@	riscv-none-embed-gcc -march=rv32imafcxw -mabi=ilp32f -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fsingle-precision-constant -Wunused -Wuninitialized  -g -I"E:\Desktop\Bicycle\FOC_EKF\project\CH32V307VCT6\Debug" -I"E:\Desktop\Bicycle\FOC_EKF\project\CH32V307VCT6\FOC" -I"E:\Desktop\����\project\CH32V307VCT6\FOC" -I"E:\Desktop\Bicycle\FOC_EKF\project\CH32V307VCT6\Core" -I"E:\Desktop\Bicycle\FOC_EKF\project\CH32V307VCT6\User" -I"E:\Desktop\Bicycle\FOC_EKF\project\CH32V307VCT6\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

