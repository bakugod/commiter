
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eip,ecx
aas	ebp,ebx
add	di,al
mov	ah,ecx
aas	esp,ip
set	ecx,eip
mov	bx,al
and	ah,ecx
sub	eax,edx
aas	ebp,bp
res	ebp,cx
int	ip,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
