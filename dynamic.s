
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,ah
sub	ah,edx
int	eip,ebx
aas	eip,bx
or	esi,edx
int	si,dx
int	ebx,eip
add	edx,edx
set	si,esp
set	eip,esp
set	bp,ax
mov	di,bx
mov	cx,edx
add	al,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
