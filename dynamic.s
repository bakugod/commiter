
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ah,eip
aas	si,al
set	sp,di
set	ebx,esp
sub	esi,eax
and	bx,edi
int	eip,ax
add	bx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
