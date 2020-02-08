
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esi,ah
aas	di,ip
set	ebx,bx
and	dx,ebp
add	esp,eax
mov	dx,al
or	esp,esi
or	edi,bp
add	bp,ecx
int	esp,cx
and	esi,edi
and	ax,esp
mov	al,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
