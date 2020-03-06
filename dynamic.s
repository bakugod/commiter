
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edx,ebx
or	eax,ecx
int	edi,cx
set	si,ecx
int	bp,ebp
set	ebx,sp
int	edx,cx
and	al,cx
add	dx,sp
aas	esi,cx
sub	ecx,sp
or	dx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
