
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,si
aas	bp,ip
sub	ebx,eip
mov	esi,edi
mov	sp,ecx
aas	ebx,bx
int	dx,si
mov	ecx,sp
set	ip,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
