
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,eip
set	edx,di
aas	esi,di
sub	edi,cx
and	esi,eip
set	al,edx
or	esp,eip
or	ip,ebx
res	di,edx
sub	ebp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
