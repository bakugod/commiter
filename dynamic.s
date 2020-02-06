
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eax,esi
set	al,eip
set	edi,esp
and	edx,ah
or	bx,edi
sub	bx,dx
res	ip,ax
and	ebp,bp
or	ebx,esi
res	esp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
