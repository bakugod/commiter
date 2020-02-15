
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bp,ecx
add	ecx,bp
and	ebx,cx
aas	esp,bx
set	ecx,ecx
add	edi,ebp
aas	ebp,esp
aas	eax,bp
set	eip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
