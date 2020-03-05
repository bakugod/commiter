
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esp,ebx
aas	ah,edx
set	ebp,ebx
mov	eip,ebx
and	cx,bp
mov	di,eip
add	eax,esi
res	ebx,bp
aas	esi,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
