
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,ebx
or	eax,al
int	bx,edx
sub	cx,si
int	ebp,edx
res	ah,eax
set	edi,dx
set	cx,esi
add	cx,bp
int	ecx,cx
int	ip,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
