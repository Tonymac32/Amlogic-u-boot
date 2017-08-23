# 1 "task_entry.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "task_entry.S"
# 1 "config.h" 1
# 2 "task_entry.S" 2
# 1 "registers.h" 1
# 11 "registers.h"
# 1 "secure_apb.h" 1
# 12 "registers.h" 2
# 3 "task_entry.S" 2

.text
.syntax unified
.code 16

 .global task_entry
.thumb_func
task_entry:
 b secure_task
 b high_task
 b low_task

.section .bss_stack.usr_stack
usr_stack:
.space 3*512
