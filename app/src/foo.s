global foo
section .text
foo:
;   mov eax, 7  ; x86
    mov rax, 7  ; x86_64
    ret
