
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esp,cx
set	ecx,si
mov	bx,ax
add	ah,dx
set	bx,ip
or	sp,dx
set	esi,bp
or	dx,cx
aas	ip,eip
aas	di,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
