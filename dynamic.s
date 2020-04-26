
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bx,ebx
add	ax,sp
add	bp,cx
res	al,di
sub	bx,eip
int	ebx,esp
set	ebx,ip
int	bp,esi
int	edx,ah
int	cx,si
int	di,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
