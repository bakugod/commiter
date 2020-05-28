
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bp,bp
add	di,ebp
aas	dx,ah
set	ax,ah
set	ebp,di
aas	dx,esi
set	bp,bp
add	ecx,ip
set	edi,di
or	ebp,ebx
or	ecx,ebp
mov	esp,al
and	bx,di
aas	di,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
