
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edx,ah
or	edi,ecx
and	bp,edi
set	esp,ah
add	cx,ecx
mov	dx,ebx
sub	al,cx
int	cx,si
and	si,edx
mov	al,esp
mov	si,edi
sub	al,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
