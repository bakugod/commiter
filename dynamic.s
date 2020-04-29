
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bp,sp
set	di,cx
mov	ah,bp
int	ah,eip
res	bp,bx
sub	edx,esi
set	esi,ebx
sub	dx,sp
res	si,di
int	si,al
set	ax,di
or	esp,ah
sub	ecx,bx
mov	eip,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
