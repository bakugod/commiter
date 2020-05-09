
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edi,al
sub	ecx,si
mov	cx,ax
mov	bx,edi
set	bx,edx
int	bp,ebx
res	ax,eax
and	ebx,di
res	eip,esi
mov	edx,esi
int	dx,bx
and	ah,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
