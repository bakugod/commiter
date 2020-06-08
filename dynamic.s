
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ah,edx
set	edx,dx
int	si,ebx
set	bp,ax
sub	esi,ebp
sub	ax,edx
or	edx,si
res	ebx,al
mov	esp,edx
res	edi,esi
or	cx,sp
int	di,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
