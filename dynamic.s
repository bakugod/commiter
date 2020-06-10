
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esi,edx
add	si,eax
add	di,edi
add	esi,bp
res	ax,esi
add	ecx,bp
set	esi,ah
add	cx,di
mov	eax,si
set	esp,edx
add	ah,ah
or	cx,dx
or	ah,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
