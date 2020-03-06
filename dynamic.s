
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebx,edi
res	eip,eip
int	edi,al
aas	al,ah
add	cx,esp
res	edi,ebx
int	eip,edx
sub	eip,bx
add	ah,edi
or	bp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
