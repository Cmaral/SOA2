# 1 "wrapper.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "wrapper.S"
# 1 "include/asm.h" 1
# 2 "wrapper.S" 2

.globl gettime; .type gettime, @function; .align 0; gettime:
 push %ebp
 mov %esp,%ebp
        movl $10, %eax
        int $0x80
        cmpl $0, %eax
        jge fi
        imull $-1, %eax
        movl %eax, errno
        movl $-1, %eax
fi:
        pop %ebp
        ret
