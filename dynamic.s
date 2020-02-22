
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	al,dx
sub	edi,eax
and	edx,si
and	al,ah
res	bx,eax
res	esp,al
res	edx,ebx
res	ah,eax
or	esi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
