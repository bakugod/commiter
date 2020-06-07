
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ip,esi
int	bp,dx
int	ah,sp
set	esi,esp
or	ip,dx
set	dx,ecx
mov	al,di
mov	edi,ah
sub	dx,dx
res	si,esi
mov	di,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
