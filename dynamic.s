
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edx,bp
int	eip,bx
res	edx,dx
and	si,ebx
res	bp,sp
and	dx,bx
and	ax,edi
set	cx,ip
aas	ah,sp
mov	dx,cx
set	ah,eip
and	esp,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
