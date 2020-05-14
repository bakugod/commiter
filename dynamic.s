
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ip,ip
mov	al,ax
int	al,bx
int	si,eip
aas	ah,edx
res	edi,ecx
int	edi,si
mov	di,si
mov	dx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
