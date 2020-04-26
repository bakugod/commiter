
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eax,ecx
sub	edi,ip
and	ebx,eax
and	ah,ecx
set	ebp,di
int	esp,di
mov	eip,ip
res	eip,ip
add	ah,ecx
int	cx,dx
mov	dx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
