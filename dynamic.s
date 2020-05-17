
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	al,ip
mov	si,esp
mov	dx,dx
mov	cx,ecx
aas	di,ebp
or	di,dx
int	esp,di
int	ebx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
