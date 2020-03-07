
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ax,sp
res	esp,si
add	esi,ebp
aas	ecx,ip
set	eip,ebp
mov	bx,dx
set	cx,dx
set	edi,bx
and	cx,al
int	ah,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
