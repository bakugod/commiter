
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,edi
and	edx,eax
add	ebp,di
res	esp,ip
mov	esi,sp
set	si,ebp
res	ip,ah
int	cx,esi
aas	ebx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
