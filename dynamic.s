
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ah,bp
res	ah,cx
sub	cx,cx
res	ah,eax
mov	ip,ebx
set	ecx,ebp
int	ecx,eax
mov	edx,ax
res	ip,di
add	ecx,ecx
and	edx,dx
and	ebp,ebx
int	sp,ebp
aas	ebp,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
