
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ax,edx
res	ebp,dx
int	ebp,esp
add	di,bp
set	esp,ip
aas	si,cx
add	si,eip
set	ip,ax
or	cx,ebp
and	eip,bp
or	ax,ebp
int	si,al
add	ip,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
