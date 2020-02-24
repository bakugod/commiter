
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	dx,dx
aas	edi,esi
sub	dx,al
and	ecx,ebx
res	ebp,edi
res	di,eip
int	edx,al
int	ebp,al
aas	di,di
mov	dx,esi
aas	dx,ip
int	bx,esi
res	esp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
