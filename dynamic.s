
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebx,esp
or	ebp,bx
mov	ecx,bp
and	eip,esi
set	edx,esi
or	edx,si
int	bx,dx
int	edx,bp
int	edi,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
