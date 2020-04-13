
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eax,bp
or	esp,eip
or	ebp,di
add	ip,ebx
aas	dx,ax
int	eip,sp
or	bx,ecx
and	edx,ecx
res	si,bp
and	esp,bp
mov	al,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
