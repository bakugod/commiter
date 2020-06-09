
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esi,al
aas	al,ip
sub	cx,eax
and	ebx,ebx
res	dx,eax
and	cx,esi
set	ecx,al
res	ip,edi
res	ax,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
