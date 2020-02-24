
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	si,ah
mov	eip,ebp
aas	cx,ebp
and	al,di
add	ebx,si
sub	bx,eax
set	esp,di
and	edi,edx
int	dx,edx
add	ebx,di
or	dx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
