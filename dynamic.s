
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebp,si
set	cx,cx
mov	ah,dx
mov	ebx,eax
int	ecx,esi
set	esp,ecx
and	ah,ecx
set	bp,dx
sub	ax,ecx
res	ebx,esp
add	eip,eip
mov	al,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
