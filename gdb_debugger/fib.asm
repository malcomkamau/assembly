section .data
    ; No data needed for this register-only demo

section .text
    global _start

_start:
    ; Initialize registers
    mov rax, 0          ; First Fibonacci number
    mov rbx, 1          ; Second Fibonacci number
    mov rcx, 10         ; Counter: calculate 10 numbers

loop_start:
    add rax, rbx        ; RAX = RAX + RBX
    xchg rax, rbx       ; Swap RAX and RBX
    
    dec rcx             ; Decrement counter
    jnz loop_start      ; If RCX is not zero, loop again

    ; Syscall to exit (sys_exit)
    mov rax, 60         ; syscall number for exit
    mov rdi, 0          ; exit code 0
    syscall
