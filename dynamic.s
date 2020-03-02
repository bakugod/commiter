
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebp,al
res	esi,al
or	sp,dx
or	dx,bx
set	al,bp
and	sp,di
mov	esp,bp
int	esi,ip
aas	edx,sp
or	ebx,ebx
set	ecx,edi
or	sp,ebp
mov	bx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
