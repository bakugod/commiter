
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	eip,dx
and	edx,al
int	ax,sp
int	esi,eax
mov	si,si
int	ip,bx
set	ax,eax
mov	al,al
and	ip,di
sub	di,bp
mov	ecx,ebp
res	edx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
