
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ax,ebp
set	cx,dx
and	si,bp
and	cx,esp
mov	bx,esi
and	eip,edx
res	dx,ip
int	eip,eax
mov	bx,di
set	sp,ax
res	ip,si
and	edx,si
res	dx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
