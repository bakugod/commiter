
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ah,di
set	eip,eip
res	ecx,al
aas	ebp,ecx
add	ax,edi
or	si,bp
set	ebx,bx
or	ebx,dx
set	al,edi
res	esp,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
