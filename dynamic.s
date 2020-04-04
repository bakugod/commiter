
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,cx
mov	esp,esi
sub	edi,cx
add	bx,si
mov	edx,bx
set	ax,esp
res	al,bx
int	edi,ip
int	eax,bp
and	eip,edi
aas	bp,ebp
set	esi,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
