cmd_lib/libfdt/fdt_sw.o := /opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/bin/aarch64-none-elf-gcc -Wp,-MD,lib/libfdt/.fdt_sw.o.d  -nostdinc -isystem /opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/bin/../lib/gcc/aarch64-none-elf/4.8.3/include -Iinclude  -I../include -I../arch/arm/include -include ../include/linux/kconfig.h  -I../lib/libfdt -Ilib/libfdt -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x01000000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror -D__ARM__ -march=armv8-a -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(fdt_sw)"  -D"KBUILD_MODNAME=KBUILD_STR(fdt_sw)" -c -o lib/libfdt/fdt_sw.o ../lib/libfdt/fdt_sw.c

source_lib/libfdt/fdt_sw.o := ../lib/libfdt/fdt_sw.c

deps_lib/libfdt/fdt_sw.o := \
  ../include/libfdt_env.h \
  ../include/compiler.h \
    $(wildcard include/config/use/stdint.h) \
  /opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/lib/gcc/aarch64-none-elf/4.8.3/include/stddef.h \
  ../include/linux/string.h \
  ../include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  ../include/linux/posix_types.h \
  ../include/linux/stddef.h \
  ../arch/arm/include/asm/posix_types.h \
  ../arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
  /opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/lib/gcc/aarch64-none-elf/4.8.3/include/stdbool.h \
  ../arch/arm/include/asm/string.h \
    $(wildcard include/config/use/arch/memcpy.h) \
    $(wildcard include/config/use/arch/memset.h) \
  include/config.h \
    $(wildcard include/config/boarddir.h) \
  ../include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
    $(wildcard include/config/partitions.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/dm/warn.h) \
    $(wildcard include/config/dm/device/remove.h) \
    $(wildcard include/config/dm/stdio.h) \
  ../include/../board/amlogic/configs/gxl_p212_v1.h \
    $(wildcard include/config/sys/generic/board.h) \
    $(wildcard include/config/aml/meson.h) \
    $(wildcard include/config/platform/power/init.h) \
    $(wildcard include/config/vcck/init/voltage.h) \
    $(wildcard include/config/vddee/init/voltage.h) \
    $(wildcard include/config/vddee/sleep/voltage.h) \
    $(wildcard include/config/cec/osd/name.h) \
    $(wildcard include/config/cec/wakeup.h) \
    $(wildcard include/config/instaboot.h) \
    $(wildcard include/config/cmd/saradc.h) \
    $(wildcard include/config/cmd/irblaster.h) \
    $(wildcard include/config/cmd/ext4.h) \
    $(wildcard include/config/bootloader/control/block.h) \
    $(wildcard include/config/cons/index.h) \
    $(wildcard include/config/baudrate.h) \
    $(wildcard include/config/aml/meson/serial.h) \
    $(wildcard include/config/serial/multi.h) \
    $(wildcard include/config/ir/remote.h) \
    $(wildcard include/config/aml/irdetect/early.h) \
    $(wildcard include/config/ir/remote/power/up/key/cnt.h) \
    $(wildcard include/config/ir/remote/use/protocol.h) \
    $(wildcard include/config/ir/remote/power/up/key/val1.h) \
    $(wildcard include/config/ir/remote/power/up/key/val2.h) \
    $(wildcard include/config/ir/remote/power/up/key/val3.h) \
    $(wildcard include/config/ir/remote/power/up/key/val4.h) \
    $(wildcard include/config/ir/remote/power/up/key/val5.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/preboot.h) \
    $(wildcard include/config/bootcommand.h) \
    $(wildcard include/config/env/is/nowhere.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/fit.h) \
    $(wildcard include/config/of/libfdt.h) \
    $(wildcard include/config/android/boot/image.h) \
    $(wildcard include/config/android/img.h) \
    $(wildcard include/config/sys/bootm/len.h) \
    $(wildcard include/config/cpu/clk.h) \
    $(wildcard include/config/ddr/size.h) \
    $(wildcard include/config/ddr/clk.h) \
    $(wildcard include/config/ddr4/clk.h) \
    $(wildcard include/config/ddr/type/lpddr3.h) \
    $(wildcard include/config/ddr/type/ddr3.h) \
    $(wildcard include/config/ddr/type/ddr4.h) \
    $(wildcard include/config/ddr/type/auto.h) \
    $(wildcard include/config/ddr/type.h) \
    $(wildcard include/config/ddr0/rank0.h) \
    $(wildcard include/config/ddr0/rank01.h) \
    $(wildcard include/config/ddr0/16bit.h) \
    $(wildcard include/config/ddr/chl/auto.h) \
    $(wildcard include/config/ddr/channel/set.h) \
    $(wildcard include/config/ddr/full/test.h) \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/cmd/ddr/d2pll.h) \
    $(wildcard include/config/cmd/ddr/test.h) \
    $(wildcard include/config/ddr/low/power.h) \
    $(wildcard include/config/ddr/zq/pd.h) \
    $(wildcard include/config/ddr/use/ext/vref.h) \
    $(wildcard include/config/store/compatible.h) \
    $(wildcard include/config/aml/mtd.h) \
    $(wildcard include/config/aml/nand.h) \
    $(wildcard include/config/cmd/nand.h) \
    $(wildcard include/config/mtd/device.h) \
    $(wildcard include/config/cmd/ubi.h) \
    $(wildcard include/config/cmd/ubifs.h) \
    $(wildcard include/config/rbtree.h) \
    $(wildcard include/config/cmd/nand/torture.h) \
    $(wildcard include/config/cmd/mtdparts.h) \
    $(wildcard include/config/mtd/partitions.h) \
    $(wildcard include/config/sys/max/nand/device.h) \
    $(wildcard include/config/sys/nand/base/list.h) \
    $(wildcard include/config/aml/sd/emmc.h) \
    $(wildcard include/config/generic/mmc.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/sys/mmc/env/dev.h) \
    $(wildcard include/config/emmc/ddr52/en.h) \
    $(wildcard include/config/emmc/ddr52/clk.h) \
    $(wildcard include/config/env/overwrite.h) \
    $(wildcard include/config/cmd/saveenv.h) \
    $(wildcard include/config/env/is/in/amlnand.h) \
    $(wildcard include/config/env/is/in/mmc.h) \
    $(wildcard include/config/sys/no/flash.h) \
    $(wildcard include/config/aml/vpu.h) \
    $(wildcard include/config/vpu/clk/level/dft.h) \
    $(wildcard include/config/aml/hdmitx20.h) \
    $(wildcard include/config/aml/canvas.h) \
    $(wildcard include/config/aml/vout.h) \
    $(wildcard include/config/aml/osd.h) \
    $(wildcard include/config/osd/scale/enable.h) \
    $(wildcard include/config/cmd/bmp.h) \
    $(wildcard include/config/aml/cvbs.h) \
    $(wildcard include/config/musb/hcd.h) \
    $(wildcard include/config/musb/udd.h) \
    $(wildcard include/config/musb/udc.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/gxl/xhci/base.h) \
    $(wildcard include/config/gxl/usb/phy2/base.h) \
    $(wildcard include/config/gxl/usb/phy3/base.h) \
    $(wildcard include/config/usb/storage.h) \
    $(wildcard include/config/usb/xhci.h) \
    $(wildcard include/config/usb/xhci/amlogic/gxl.h) \
    $(wildcard include/config/cmd/fastboot.h) \
    $(wildcard include/config/fastboot/flash/mmc/dev.h) \
    $(wildcard include/config/fastboot/flash.h) \
    $(wildcard include/config/usb/gadget.h) \
    $(wildcard include/config/usbdownload/gadget.h) \
    $(wildcard include/config/sys/cacheline/size.h) \
    $(wildcard include/config/fastboot/max/down/size.h) \
    $(wildcard include/config/device/product.h) \
    $(wildcard include/config/aml/v2/factory/burn.h) \
    $(wildcard include/config/aml/factory/burn/local/upgrade.h) \
    $(wildcard include/config/power/key/not/supported/for/burn.h) \
    $(wildcard include/config/sd/burning/support/ui.h) \
    $(wildcard include/config/aml/security/key.h) \
    $(wildcard include/config/unify/key/manage.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/designware/eth.h) \
    $(wildcard include/config/phylib.h) \
    $(wildcard include/config/net/multi.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/rarp.h) \
    $(wildcard include/config/hostname.h) \
    $(wildcard include/config/random/ethaddr.h) \
    $(wildcard include/config/ethaddr.h) \
    $(wildcard include/config/ipaddr.h) \
    $(wildcard include/config/gatewayip.h) \
    $(wildcard include/config/serverip.h) \
    $(wildcard include/config/netmask.h) \
    $(wildcard include/config/efuse.h) \
    $(wildcard include/config/sys/i2c/aml.h) \
    $(wildcard include/config/sys/i2c/speed.h) \
    $(wildcard include/config/cmd/cache.h) \
    $(wildcard include/config/cmd/booti.h) \
    $(wildcard include/config/cmd/efuse.h) \
    $(wildcard include/config/cmd/i2c.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/fat.h) \
    $(wildcard include/config/cmd/gpio.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/cmd/reboot.h) \
    $(wildcard include/config/cmd/echo.h) \
    $(wildcard include/config/cmd/jtag.h) \
    $(wildcard include/config/cmd/autoscript.h) \
    $(wildcard include/config/cmd/misc.h) \
    $(wildcard include/config/dos/partition.h) \
    $(wildcard include/config/aml/partition.h) \
    $(wildcard include/config/mmc.h) \
    $(wildcard include/config/fs/fat.h) \
    $(wildcard include/config/fs/ext4.h) \
    $(wildcard include/config/lzo.h) \
    $(wildcard include/config/sys/dcache/off.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/need/bl301.h) \
    $(wildcard include/config/need/bl32.h) \
    $(wildcard include/config/cmd/rsvmem.h) \
    $(wildcard include/config/fip/img/support.h) \
    $(wildcard include/config/bootdelay.h) \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/cmd/itest.h) \
    $(wildcard include/config/cmd/cpu/temp.h) \
    $(wildcard include/config/sys/mem/top/hide.h) \
    $(wildcard include/config/multi/dtb.h) \
    $(wildcard include/config/cmd/chipid.h) \
    $(wildcard include/config/debug/mode.h) \
    $(wildcard include/config/ddr/clk/debug.h) \
    $(wildcard include/config/cpu/clk/debug.h) \
    $(wildcard include/config/aml/secure/uboot.h) \
    $(wildcard include/config/aml/crypto/uboot.h) \
    $(wildcard include/config/aml/crypto/img.h) \
    $(wildcard include/config/secure/storage.h) \
    $(wildcard include/config/aml/uboot/auto/test.h) \
    $(wildcard include/config/customer/id.h) \
    $(wildcard include/config/aml/customer/id.h) \
    $(wildcard include/config/internal/phy.h) \
  include/asm/arch/cpu.h \
    $(wildcard include/config/aml/meson/gx.h) \
    $(wildcard include/config/aml/meson/gxl.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/sys/text/base.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/prompt.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/board/late/init.h) \
    $(wildcard include/config/sys/hush/parser.h) \
    $(wildcard include/config/dtb/mem/addr.h) \
    $(wildcard include/config/silent/console.h) \
    $(wildcard include/config/silent/console/update/on/reloc.h) \
    $(wildcard include/config/silent/u/boot/only.h) \
    $(wildcard include/config/aml/bl33/compress/enable.h) \
  ../arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/sys/generic/global/data.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/static/rela.h) \
    $(wildcard include/config/fsl/lsch3.h) \
    $(wildcard include/config/ls102xa.h) \
  ../include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/cmd/ext2.h) \
    $(wildcard include/config/cmd/ext4/write.h) \
    $(wildcard include/config/ext4/write.h) \
    $(wildcard include/config/cmd/ide.h) \
    $(wildcard include/config/cmd/sata.h) \
    $(wildcard include/config/cmd/scsi.h) \
    $(wildcard include/config/cmd/part.h) \
    $(wildcard include/config/cmd/gpt.h) \
    $(wildcard include/config/systemace.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/partition/uuids.h) \
    $(wildcard include/config/efi/partition.h) \
    $(wildcard include/config/random/uuid.h) \
    $(wildcard include/config/cmd/uuid.h) \
    $(wildcard include/config/bootp/pxe.h) \
    $(wildcard include/config/lib/uuid.h) \
    $(wildcard include/config/lib/rand.h) \
    $(wildcard include/config/lib/hw/rand.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/lcd.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/image/format/legacy.h) \
    $(wildcard include/config/disable/image/legacy.h) \
    $(wildcard include/config/dm/i2c.h) \
    $(wildcard include/config/sys/i2c.h) \
  ../include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/cmd/link/local.h) \
    $(wildcard include/config/cmd/nfs.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/cmd/tftpput.h) \
    $(wildcard include/config/cmd/tftpsrv.h) \
  ../include/linux/linux_string.h \
  ../arch/arm/include/asm/byteorder.h \
  ../include/linux/byteorder/little_endian.h \
  ../include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  ../include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  ../include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  ../include/linux/byteorder/swab.h \
  ../include/linux/byteorder/generic.h \
  ../include/linux/types.h \
  ../include/fdt.h \
  ../include/libfdt.h \
  ../lib/libfdt/libfdt_internal.h \

lib/libfdt/fdt_sw.o: $(deps_lib/libfdt/fdt_sw.o)

$(deps_lib/libfdt/fdt_sw.o):
