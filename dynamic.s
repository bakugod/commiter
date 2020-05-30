
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	di,bp
aas	ax,edx
sub	edi,esi
set	eip,di
add	ecx,ecx
mov	bx,edi
set	bx,al
int	ax,bp
set	di,edx
and	ebx,bp
set	ebp,esi
sub	cx,si
aas	ah,edi
int	edx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
