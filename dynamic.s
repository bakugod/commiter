
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebx,bp
or	ecx,sp
mov	ax,di
aas	ebp,ecx
res	dx,esp
add	bp,cx
add	al,ip
or	bp,eax
mov	eax,bx
set	sp,dx
int	ax,sp
or	edi,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
