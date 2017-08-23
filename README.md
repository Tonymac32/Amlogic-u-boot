u-boot 2015.01 from Amlogic buildroot.  

makefile requires toolchain gcc-linaro-aarch64-none-elf-4.8-2013.11_linux  located in /opt

To build u-boot.bin for a board:  ./mk <boardname>

added board:  glx_libretech_cc   (Le Potato)
    -> Current configuration loads /boot/boot.scr from an ext4 partition and executes it.
    
