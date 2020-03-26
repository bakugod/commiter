
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bp,bp
aas	ebx,ip
int	edx,di
mov	si,eax
mov	ip,cx
sub	ecx,ebx
or	ebx,esp
add	cx,eax
mov	al,eip
aas	esi,cx
aas	ebx,ebp
and	dx,ip
aas	edx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
