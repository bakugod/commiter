
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edi,edx
set	ebp,ebx
aas	esp,ebp
mov	bx,edi
or	bx,ebp
sub	ax,ah
or	esp,eax
sub	edi,bp
or	al,ip
res	esi,al
int	esi,dx
int	dx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
