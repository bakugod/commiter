
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edi,esp
add	eip,edi
res	cx,eip
mov	edx,sp
add	cx,ebx
mov	bp,eax
or	eax,eax
set	ah,cx
add	ecx,eip
set	edi,ebp
sub	cx,edx
int	ah,si
res	ah,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
