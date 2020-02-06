
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edx,eip
and	ax,edx
res	cx,cx
res	bx,edi
add	ebx,cx
sub	ebx,ip
aas	esp,bp
mov	edx,edx
aas	esp,ip
res	sp,sp
sub	eax,ah
mov	bp,di
and	ebx,ax
res	eip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
