
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edx,di
add	eip,ah
and	edi,si
sub	di,ebp
aas	bp,si
sub	eip,ah
sub	dx,eip
aas	edx,bp
set	al,di
set	ebp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
