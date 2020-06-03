
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	eax,esp
add	ah,cx
int	edx,cx
res	eip,di
aas	esp,esp
res	ebp,ebx
res	edx,esi
and	si,bp
set	ebx,ebx
int	sp,esp
aas	ebp,cx
int	cx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
