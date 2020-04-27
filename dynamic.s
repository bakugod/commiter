
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ax,ip
aas	ecx,edi
aas	bx,ip
mov	ax,esp
aas	ah,esp
add	esp,eax
mov	di,bx
add	sp,bp
add	cx,dx
sub	edx,edi
or	ebx,ax
and	al,ebp
or	ebp,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
