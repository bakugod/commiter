
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ip,ip
res	dx,al
int	bx,esi
aas	ah,cx
int	edx,esp
and	ah,bx
mov	dx,ebx
or	ecx,eip
int	sp,eip
and	eax,bp
res	esp,ip
set	bp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
