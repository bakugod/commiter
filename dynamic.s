
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	di,cx
mov	ah,ecx
add	bp,edi
res	al,ebp
res	eax,al
int	ip,ah
aas	ax,ecx
aas	esi,ebp
sub	esi,ecx
mov	ebp,al
set	di,ip
res	ah,cx
add	esi,ah
int	esi,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
