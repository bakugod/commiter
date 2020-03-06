
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,bp
res	di,esp
mov	si,ecx
sub	sp,esi
or	bp,di
res	si,dx
aas	ah,esp
res	dx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
