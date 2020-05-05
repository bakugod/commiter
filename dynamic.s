
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esi,di
mov	ebx,ecx
sub	ecx,esi
or	di,ah
or	dx,di
set	al,esp
res	esi,bp
add	ip,ax
set	edi,al
sub	di,di
sub	bx,edx
add	ax,dx
set	esp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
