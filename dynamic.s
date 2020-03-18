
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	dx,ebp
int	eax,cx
sub	si,ah
mov	edi,dx
or	ah,al
mov	dx,ah
mov	edx,edi
set	dx,cx
and	al,ip
int	ebx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
