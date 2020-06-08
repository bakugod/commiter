
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esp,eax
int	ah,ebp
set	si,eax
add	ax,eip
int	eax,si
add	ecx,sp
mov	di,al
or	ip,ip
or	ah,cx
res	bx,sp
aas	ebp,bx
mov	edi,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
