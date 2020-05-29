
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bp,ecx
and	al,ecx
int	ah,esp
or	ip,esi
and	esp,ebx
add	edi,cx
add	si,esp
or	dx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
