
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bp,ah
or	edx,al
aas	si,ecx
sub	edi,esp
mov	al,esp
aas	ax,dx
int	bx,ebp
int	dx,ecx
aas	ip,bp
int	ax,ebp
aas	si,ecx
add	di,ip
sub	ax,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
