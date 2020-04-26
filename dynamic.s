
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,di
or	ebx,ebp
int	ax,eax
set	ip,ebx
and	ebx,bx
aas	ip,edi
add	dx,eax
mov	edx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
