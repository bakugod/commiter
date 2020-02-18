
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	sp,ebx
aas	ah,dx
int	bx,al
sub	ip,edx
or	al,esp
aas	esp,eax
aas	esi,si
or	ah,ah
res	si,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
