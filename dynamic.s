
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esi,ebx
or	cx,ebp
res	ax,eax
res	esi,ecx
or	eip,esp
res	ip,dx
add	ip,cx
set	ax,si
sub	esi,ebp
aas	ah,ecx
res	dx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
