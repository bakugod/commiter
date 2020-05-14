
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	di,edi
sub	bx,eip
mov	ah,edx
res	al,sp
set	di,dx
res	eip,bp
aas	sp,ecx
and	bx,cx
add	bp,di
int	ip,al
sub	sp,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
