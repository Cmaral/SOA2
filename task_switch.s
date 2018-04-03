# 1 "task_switch.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "task_switch.S"
# 1 "include/asm.h" 1
# 2 "task_switch.S" 2

.globl task_switch; .type task_switch, @function; .align 0; task_switch:
  pushl %ebp
  movl %esp, %ebp
        pushl %esi
        pushl %edi
        pushl %ebx
        pushl 8(%ebp)
        call inner_task_switch
        popl %ebx
        popl %edi
        popl %esi
        popl %ebp
        ret