
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	dx,esp
mov	si,edx
mov	eax,esp
set	si,sp
set	ebx,bp
and	sp,eax
res	ecx,bx
and	ebx,si
int	edi,edi
add	bx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
