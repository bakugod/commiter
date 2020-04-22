
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	sp,cx
aas	edi,ax
sub	al,di
int	eax,esp
set	dx,eax
mov	esi,sp
sub	edi,esi
sub	edi,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
