
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	dx,edi
int	esp,ah
add	bp,sp
res	edx,ip
add	edx,esp
add	ip,bp
add	edi,edi
sub	ax,bx
int	ax,ah
and	bp,ah
or	eax,ebp
aas	ax,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
