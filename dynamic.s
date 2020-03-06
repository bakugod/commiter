
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	si,al
and	ecx,ip
or	ecx,ah
and	ecx,ax
res	ah,edi
aas	di,ah
add	edi,eip
sub	eip,bx
and	ebx,bx
or	bx,ebp
int	bx,ebp
set	bx,eax
set	ebp,ecx
add	cx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
