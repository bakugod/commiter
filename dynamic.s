
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,cx
sub	ip,ip
set	cx,esi
add	ebp,bx
add	di,eax
sub	ebp,edi
sub	al,ebx
set	bp,ecx
set	ebx,ah
aas	ip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
