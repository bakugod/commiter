
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eip,dx
or	eip,di
or	ip,sp
and	al,si
or	ecx,eip
aas	dx,eax
res	edx,si
add	eax,ip
sub	sp,eax
or	ebx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
