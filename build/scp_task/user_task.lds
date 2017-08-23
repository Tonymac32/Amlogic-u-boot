OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(task_entry)
SECTIONS
{
 . = (0x10000000 + 40 * 1024);
 .text :
 {
  *task_entry.o (.text)
  *(.text .text*)
  *(.ARM.*)
 }
 .common :
 {
  *(.commo*)
 }
 . = ALIGN(8*1024);
 .data :
 {
  *(.bss .data .rodata*)
 }
 . = ALIGN(4);
 _bssstart = . ;
 .bss : { *(.bss) }
 . = ALIGN(4);
 _bssend = . ;
 . = ((0x10000000 + 40 * 1024)+(13 * 1024)) - 3*512 - 128;
 .bss_stack : { *(.bss_stack.usr_stack) }
}
ASSERT(_bssend <= (((0x10000000 + 40 * 1024)+(13 * 1024)) - 3*512 - 128), "Data is too big. Please fine-tune start address and LENGTH!");
