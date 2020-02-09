
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ax,ecx
set	ebp,si
res	eip,ebp
add	eax,ebp
set	cx,edi
and	si,dx
sub	edx,edx
int	esp,ecx
add	esi,ecx
and	cx,bp
int	edx,ebx
add	esp,ip
mov	si,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
