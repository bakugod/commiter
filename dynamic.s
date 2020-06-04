
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,esi
mov	esp,esp
res	di,al
set	bp,bp
and	dx,eax
aas	al,di
add	ecx,edx
sub	ebp,cx
add	dx,eip
and	edx,ax
mov	eax,al
set	ebp,cx
or	ip,cx
and	di,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
