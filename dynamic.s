
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	cx,bx
sub	edi,edi
or	eip,ah
sub	di,si
or	eax,bp
add	di,ebx
mov	bx,bp
set	esi,di
or	esp,ip
int	dx,ip
and	bp,eax
int	si,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
