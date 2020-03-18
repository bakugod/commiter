
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,edx
add	al,ip
res	ax,esp
sub	bx,eax
res	esp,edx
and	ecx,bp
or	edx,ah
res	cx,eip
and	ax,edi
add	bp,bx
and	ebx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
