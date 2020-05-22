
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eax,al
set	ebp,ebx
set	cx,cx
res	ebx,ebp
mov	eax,ebx
res	ecx,ecx
res	eax,ax
and	cx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
