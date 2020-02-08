
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	al,cx
add	ebp,cx
set	edx,sp
set	ah,di
int	sp,esi
int	eip,si
int	eax,ecx
and	ip,ip
or	ah,ip
sub	ebp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
