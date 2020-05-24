
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	al,edi
sub	bx,al
and	di,di
set	edx,ax
set	bp,eax
mov	bx,eip
and	ecx,bp
res	ecx,eip
int	sp,bx
or	edx,ecx
set	esp,bx
and	esp,ebp
and	ecx,ecx
int	ebp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
