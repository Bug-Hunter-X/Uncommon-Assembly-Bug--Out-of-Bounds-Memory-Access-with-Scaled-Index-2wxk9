section .data
    upperBound dq 100 ; Example upper bound for ecx

section .text
    global _start

_start:
    ; ... other code ...

    ; Get the value of ecx (replace with actual logic)
    mov ecx, [some_variable]

    ; Validate ecx
    cmp ecx, [upperBound]
    jg error_handler ; Jump to error handler if ecx exceeds the upper bound
    ;Check for negative values
    cmp ecx, 0
    jl error_handler

    mov eax, [ebx+ecx*4] ; Access memory only if ecx is validated

    ; ... rest of the code ...

error_handler:
    ; Handle the error appropriately (e.g., exit the program)
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80

    ; ...
