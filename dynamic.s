
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebp,ecx
aas	edx,ebx
add	si,edx
int	esi,al
mov	bx,bx
or	si,ax
and	cx,di
res	eax,sp
set	ebx,ip
int	edi,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
