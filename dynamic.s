
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	si,bx
aas	ebx,ebx
add	si,edi
and	dx,bx
aas	cx,esp
aas	bp,dx
aas	esi,ip
add	ax,ebp
aas	esi,bp
res	edi,esp
int	si,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
