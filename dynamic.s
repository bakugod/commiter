
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esi,bp
mov	ebx,dx
int	ax,esi
res	ecx,sp
sub	edx,di
int	ah,ax
mov	ecx,si
or	bx,esp
mov	dx,ebx
add	edx,ax
add	ebx,ah
set	cx,dx
aas	ebx,ebp
sub	esp,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
