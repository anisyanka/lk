LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_DEPS += \
    lib/cbuf \
    lib/fdt \
    dev/interrupt/arm_gic \
    dev/timer/arm_generic \

MODULE_SRCS += \
	$(LOCAL_DIR)/platform.c \
	$(LOCAL_DIR)/uart.c \

ARCH := arm
ARM_CPU := cortex-r4f
MEMBASE := 0
MEMSIZE := 0x80000000	# 2GB
KERNEL_LOAD_OFFSET := 0x01080000
LINKER_SCRIPT += \
	$(BUILDDIR)/system-onesegment.ld

MODULE := $(LOCAL_DIR)

MODULE_DEPS += \
		app/shell \


include make/module.mk
