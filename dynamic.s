
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,esp
and	ax,bx
or	ah,eax
and	bx,bx
add	esp,ah
add	esi,ax
aas	si,cx
mov	ecx,ip
mov	esp,si
and	dx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
