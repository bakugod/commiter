
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebp,di
set	ah,ecx
sub	ecx,bp
res	cx,si
res	edi,ebx
sub	sp,edx
add	al,sp
int	ax,cx
sub	al,al
mov	esp,edx
aas	ebp,ax
aas	ax,di
mov	dx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
