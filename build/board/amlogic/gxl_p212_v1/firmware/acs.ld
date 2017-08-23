OUTPUT_FORMAT("elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
ENTRY(acs_entry)
SECTIONS
{
    . = 0x0;
    ro . : {
        __RO_START__ = .;
        *acs_entry.o(.text*)
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
        *(.bss*)
        __BSS_END__ = .;
    }
    ASSERT(. <= 0x1000, "timing image has exceeded its limit.")
}
