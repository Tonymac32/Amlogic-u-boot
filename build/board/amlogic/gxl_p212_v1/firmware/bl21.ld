OUTPUT_FORMAT("elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
ENTRY(bl21_entrypoint)
SECTIONS
{
    . = 0xd900b400;
    ASSERT(. == ALIGN(1024),
           "BL21 base address is not aligned.")
    ro . : {
        __RO_START__ = .;
        *bl21_entrypoint.o(.text*)
        *(.text*)
        *(.rodata*)
        *(.vectors)
        __RO_END_UNALIGNED__ = .;
        __RO_END__ = .;
    }
    .data . : {
        __DATA_START__ = .;
        *(.data*)
        __DATA_END__ = .;
    }
    .bss : ALIGN(16) {
        __BSS_START__ = .;
        *(SORT_BY_ALIGNMENT(.bss*))
        *(COMMON)
        __BSS_END__ = .;
    }
    __BSS_SIZE__ = SIZEOF(.bss);
    ASSERT(. <= 0xd900c000, "bl21 image has exceeded its limit.")
}
