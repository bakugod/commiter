
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ah,ah
sub	ecx,si
and	si,bx
sub	bp,ip
add	ecx,edi
add	edi,esp
res	esi,sp
and	si,bx
add	ecx,edi
sub	eax,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
