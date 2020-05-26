
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,eax
int	di,ebx
res	edi,bp
sub	ah,al
or	ebp,ip
set	sp,cx
add	esp,dx
res	ebp,eip
and	bx,cx
or	ah,si
set	ecx,ebx
int	esi,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
