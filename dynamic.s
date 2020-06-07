
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ax,esp
sub	edi,edx
int	ah,sp
sub	eax,al
aas	al,bx
and	cx,esp
res	si,si
add	ebx,ebp
mov	si,cx
mov	ax,ax
add	eax,bx
aas	esp,ax
res	cx,bx
add	sp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
