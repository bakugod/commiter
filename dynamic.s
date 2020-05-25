
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esp,ah
res	eip,edi
sub	ecx,esi
int	al,ax
and	ebp,edi
or	ah,ah
or	cx,di
aas	ah,edx
int	al,al
or	eip,esi
mov	bx,sp
and	eax,edi
or	edx,bp
add	cx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
