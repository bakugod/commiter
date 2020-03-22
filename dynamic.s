
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esp,esi
add	si,eip
and	eax,cx
and	ebx,esp
int	di,sp
res	bp,ebx
set	ecx,cx
sub	al,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
