
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esp,eip
add	ebx,eip
mov	ah,esi
or	ip,di
aas	al,di
mov	di,esp
aas	ax,dx
mov	di,edi
and	esp,esi
mov	di,bx
and	ah,bx
add	ebp,cx
add	di,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
