
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,ebp
mov	edi,esp
set	bx,al
aas	di,eip
int	eax,esi
sub	ecx,di
set	edi,eax
set	ebp,esi
int	dx,ax
add	cx,dx
mov	bp,eip
or	dx,bx
res	di,ip
aas	ax,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
