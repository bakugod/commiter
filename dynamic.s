
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	dx,cx
or	ah,ebp
int	ax,bp
or	cx,ah
sub	si,si
int	eax,eip
or	cx,di
add	esp,esi
res	ip,sp
or	edx,al
add	eip,si
sub	edx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
