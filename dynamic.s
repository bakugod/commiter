
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	si,ebx
mov	si,ip
aas	esp,ah
sub	cx,bp
and	bx,cx
aas	edx,edx
add	ecx,di
mov	eip,ebx
and	di,bp
res	ax,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
