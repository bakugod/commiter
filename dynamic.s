
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edx,cx
or	sp,esi
mov	esp,bp
and	eip,edi
set	eip,edx
and	bx,cx
aas	ecx,dx
int	cx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
