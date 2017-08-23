cmd_u-boot.hex := /opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/bin/aarch64-none-elf-objcopy  -j .text -j .rodata -j .data -j .u_boot_list -j .rela.dyn --gap-fill=0xff -O ihex u-boot u-boot.hex
