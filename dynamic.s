
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ip,ecx
or	edi,dx
mov	ecx,ebx
or	cx,ip
mov	si,si
aas	ebp,dx
and	esp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
