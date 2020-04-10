
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebp,sp
add	di,ip
mov	edx,cx
mov	eip,ecx
res	bx,ax
aas	si,al
mov	ax,di
sub	ip,ip
or	ax,eax
mov	ebx,ip
mov	ebx,ah
sub	bp,ecx
and	ah,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
