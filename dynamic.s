
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebp,al
add	sp,cx
mov	ah,di
res	edi,si
mov	al,ebx
res	bx,sp
set	ebx,si
or	esi,ebp
sub	di,di
or	eax,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
