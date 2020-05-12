
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ecx,esi
sub	si,sp
aas	ebp,si
mov	di,ah
set	eip,bx
sub	ebx,sp
int	edx,ebp
and	ebp,esp
aas	ip,ah
aas	dx,edx
sub	al,ebx
mov	ah,ebp
int	ah,eip
mov	esi,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
