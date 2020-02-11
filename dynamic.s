
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,eip
aas	dx,di
and	al,sp
sub	ebx,ebx
mov	ecx,dx
aas	di,ecx
add	eax,cx
aas	eax,ebp
set	ebx,al
int	dx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
