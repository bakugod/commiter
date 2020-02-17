
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,ebp
res	si,ax
and	ebp,sp
res	ip,cx
res	ecx,di
and	eax,edi
or	cx,edi
add	edi,dx
add	ip,eax
int	al,al
int	ip,sp
add	ah,bp
mov	cx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
