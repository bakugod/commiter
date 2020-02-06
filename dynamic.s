
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	al,esi
sub	bx,esi
res	esp,sp
mov	bp,bx
res	di,ah
res	eax,bx
aas	eax,esi
add	cx,bp
add	edi,bp
int	eax,ecx
mov	sp,cx
set	esp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
