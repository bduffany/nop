section .text
    global _start

_start:
    mov     rax, 60         ; syscall number for sys_exit
    xor     rdi, rdi        ; exit code 0
    syscall                 ; invoke operating system to exit
