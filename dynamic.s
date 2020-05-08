
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	eax,esi
int	eip,eip
int	ax,ax
sub	cx,ax
mov	edx,ebp
sub	ax,eip
res	bp,bx
and	cx,sp
sub	ah,edi
or	edi,ebp
res	ip,eip
set	al,edx
int	edi,si
add	cx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
