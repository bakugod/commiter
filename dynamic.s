
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,ax
mov	eax,esi
add	sp,ah
res	di,eip
add	edi,al
int	sp,ah
sub	ax,esp
or	dx,ebp
add	si,ip
mov	eax,bx
int	esi,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
