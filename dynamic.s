
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ax,ip
or	esi,eip
sub	si,ebp
add	ah,eax
int	ah,esp
res	eip,al
res	al,ebp
or	bp,ip
or	si,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
