
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esi,edi
res	cx,di
int	edx,sp
int	dx,si
mov	ebx,ecx
set	si,si
int	al,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
