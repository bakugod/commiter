
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esp,sp
mov	sp,di
set	dx,eip
sub	ebp,esi
int	bp,ax
and	sp,eax
or	esi,di
sub	dx,bx
int	edi,di
set	ah,si
mov	ip,ebx
res	sp,ebx
mov	ecx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
