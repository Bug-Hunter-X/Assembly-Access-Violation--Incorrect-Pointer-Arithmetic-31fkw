section .data
    array dw 10, 20, 30, 40, 50 ; Example array
    array_size equ ($-array)/2 ; Size of array in DWORDs

section .text
    global _start

_start:
    mov ebx, array ; Base address of array
    mov ecx, 4 ; Index (should be less than array_size)

    ; BOUNDS CHECKING ADDED
    cmp ecx, array_size
    jl access_array
    ;Handle out of bounds error appropriately(exit or exception handling)
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80

access_array:
    mov eax, [ebx+4*ecx] ; Access array element
    ; ... further code using eax ...

    ; Exit the program
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80