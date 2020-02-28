
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,sp
add	eip,al
aas	al,cx
set	di,esi
or	ax,ebp
add	bx,bp
add	cx,sp
and	esp,edx
add	bx,edx
sub	eax,edi
or	eip,ecx
set	edi,cx
add	di,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
