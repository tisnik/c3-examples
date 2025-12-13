BITS 64

global add

section .text

add:
     mov eax, edi
     add eax, esi
     ret
