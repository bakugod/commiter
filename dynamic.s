
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,edi
or	edi,di
mov	al,ebp
or	ax,di
or	eip,bx
add	ebx,bx
or	esp,bx
sub	edx,dx
int	al,esi
or	cx,ecx
add	bp,eax
mov	eax,esp
and	ah,di
mov	ebx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
