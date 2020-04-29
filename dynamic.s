
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	si,ah
and	dx,esi
set	edx,ecx
int	ecx,esi
sub	di,al
int	ip,ah
mov	edi,ip
aas	edi,ebx
res	ebx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
