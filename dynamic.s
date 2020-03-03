
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	sp,ecx
add	eip,sp
int	al,bp
aas	edx,sp
set	eip,eax
res	bx,sp
add	ebx,bx
add	ebp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
