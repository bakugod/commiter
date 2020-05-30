
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	si,ip
and	sp,ecx
res	di,sp
sub	al,edx
or	ip,al
add	ecx,bp
or	cx,ebx
sub	al,ax
res	cx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
