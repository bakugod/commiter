
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,ebp
sub	edx,ah
set	ah,al
and	ebp,cx
mov	eip,al
mov	cx,ip
res	al,ip
int	sp,si
or	ip,sp
res	ecx,ah
aas	bx,eip
and	eip,dx
add	si,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
