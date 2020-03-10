
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,esi
mov	dx,cx
int	bx,sp
and	esp,eax
mov	bx,ecx
int	eip,eax
aas	cx,eax
set	si,ecx
or	sp,eax
and	cx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
