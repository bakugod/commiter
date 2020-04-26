
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	dx,ecx
aas	al,ip
res	dx,ah
add	bx,al
mov	esi,eip
or	si,eax
aas	ax,cx
aas	esi,cx
set	si,ecx
and	ecx,ebx
sub	bp,ecx
mov	ebp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
