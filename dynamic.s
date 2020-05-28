
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bx,eax
add	bp,cx
res	ip,sp
set	ax,sp
and	ecx,ip
sub	bp,ip
int	eax,di
res	bp,al
int	cx,si
add	eip,edi
sub	dx,ebp
and	edx,eax
int	cx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
