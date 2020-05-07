
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,bp
mov	ebx,di
sub	esp,cx
mov	bp,eax
mov	bx,edi
sub	eip,eax
and	ebp,bx
int	cx,bp
aas	bp,edx
sub	edi,edx
and	cx,eip
mov	eax,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
