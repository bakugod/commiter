
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ax,edi
sub	eax,si
or	eax,edx
add	cx,dx
sub	bx,eax
res	bp,di
set	ebp,ebp
mov	si,si
add	ip,edx
aas	si,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
