
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,bx
and	si,bx
res	esp,eip
res	ax,ip
and	ecx,ip
int	ebp,bp
set	ax,edi
add	edi,edx
aas	di,ebx
int	ip,ebx
int	esp,bx
add	edx,edx
set	dx,al
or	esi,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
