
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ip,ax
mov	ebp,ecx
set	bx,bx
or	si,eax
aas	ebx,ip
sub	esp,ebp
aas	edx,dx
set	ebp,bp
or	dx,edi
or	edi,ax
add	cx,eax
sub	si,eip
and	esp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
