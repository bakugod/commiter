
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ah,ip
or	sp,ebx
mov	esi,sp
add	edx,al
add	al,esi
sub	ebp,bx
or	cx,esp
or	ebx,di
add	ebp,edi
aas	eax,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
