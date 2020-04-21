
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ah,eip
res	edx,ebp
mov	ip,ebp
int	al,ah
sub	ax,cx
int	ebx,eip
or	bp,al
res	ebx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
