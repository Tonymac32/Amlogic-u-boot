cmd_lib/errno.o := /opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/bin/aarch64-none-elf-gcc -Wp,-MD,lib/.errno.o.d  -nostdinc -isystem /opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/bin/../lib/gcc/aarch64-none-elf/4.8.3/include -Iinclude  -I../include -I../arch/arm/include -include ../include/linux/kconfig.h  -I../lib -Ilib -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x01000000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror -D__ARM__ -march=armv8-a -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(errno)"  -D"KBUILD_MODNAME=KBUILD_STR(errno)" -c -o lib/errno.o ../lib/errno.c

source_lib/errno.o := ../lib/errno.c

deps_lib/errno.o := \

lib/errno.o: $(deps_lib/errno.o)

$(deps_lib/errno.o):