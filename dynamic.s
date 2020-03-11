
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esi,di
set	si,al
aas	dx,eax
sub	esi,di
aas	dx,edx
or	cx,bp
sub	edi,ebp
aas	dx,dx
and	ecx,ebx
int	edx,esp
int	ebp,sp
add	dx,dx
set	ah,eax
set	eip,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
