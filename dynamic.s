
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	eax,dx
sub	si,ebp
add	bx,di
res	edi,ebp
or	sp,edx
and	ax,si
set	ip,ip
int	al,si
and	si,di
res	cx,edi
and	eax,dx
add	al,ah
or	ax,edx
mov	ah,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
