
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ip,eax
or	ax,ah
or	esp,ecx
and	di,ax
int	al,cx
sub	ah,eip
res	bp,ax
set	ebp,esi
add	esi,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
