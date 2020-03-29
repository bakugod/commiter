
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eip,esp
set	ebx,ebp
int	ebx,eip
aas	cx,dx
mov	di,al
or	edi,esp
mov	ip,bx
or	ebp,ecx
mov	esi,si
aas	si,ip
add	esp,si
add	bx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
