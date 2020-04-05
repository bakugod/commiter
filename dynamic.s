
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	al,si
res	esp,edx
int	al,edi
add	al,dx
int	ecx,ebx
res	si,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
