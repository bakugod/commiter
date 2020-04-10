
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ip,eip
int	bx,bx
set	cx,ecx
or	esi,al
or	esi,ip
add	edi,ax
sub	ebp,ecx
mov	ip,ax
int	eip,di
res	sp,bx
res	ip,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
