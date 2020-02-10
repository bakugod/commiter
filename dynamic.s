
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,esp
and	ebp,al
set	si,ecx
aas	edi,al
set	ah,si
set	dx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
