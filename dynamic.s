
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esp,cx
int	ecx,eax
and	ebx,al
and	edx,si
int	ebx,eax
set	eip,bp
and	esp,eip
set	di,sp
mov	ax,eip
res	edx,esp
set	si,cx
mov	di,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
