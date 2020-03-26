
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	al,si
set	di,edi
set	ecx,ecx
set	ip,si
or	ax,ecx
res	ecx,ebx
and	ecx,ax
int	ax,bx
mov	al,ebp
sub	esi,bx
sub	dx,al
aas	eip,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
