obj-m += CCmodule.o

CROSS_COMPILE ?= riscv64-unknown-linux-gnu-
ARCH ?= riscv

KERNEL_DIR ?= /opt/riscv

all:
	make -C $(KERNEL_DIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules

clean:
	make -C $(KERNEL_DIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) clean


#**License: [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/)**