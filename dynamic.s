
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ax,ip
int	ah,ebp
sub	dx,al
res	cx,ip
res	edi,ip
sub	ebx,al
or	eip,ah
add	ah,esp
aas	bx,cx
int	ip,ecx
set	ebx,di
sub	esi,di
aas	bx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
