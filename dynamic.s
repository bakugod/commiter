
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eax,eax
add	esi,cx
set	ebx,di
res	eax,dx
or	bp,bp
sub	ebx,edx
sub	ah,esp
aas	sp,edi
res	ebp,ebp
res	di,edi
set	si,bp
sub	cx,ebp
mov	ax,si
add	al,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
