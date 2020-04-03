
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	cx,dx
mov	sp,ebx
sub	dx,bp
res	ah,edx
sub	ebx,ip
or	esp,eip
res	al,bx
sub	esp,sp
set	ebp,esi
sub	ecx,ebp
and	edx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
