
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ip,cx
mov	eip,esi
mov	eip,ip
add	ip,di
res	esi,al
int	ax,ip
sub	ebx,dx
res	bx,edx
and	ebx,ip
or	bx,ah
aas	ip,al
or	eax,eax
mov	bp,ebx
aas	ip,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
