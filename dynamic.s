
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,eax
res	edi,esi
add	esp,eip
int	di,ip
set	bx,esi
set	dx,ax
set	ecx,eip
res	ecx,sp
mov	dx,ecx
res	cx,si
or	esi,esi
aas	ah,dx
res	bx,sp
sub	esp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
