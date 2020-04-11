
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,eax
and	eax,ebp
res	ebp,edx
or	ax,ax
and	ebx,edx
int	cx,ax
add	sp,ebx
res	al,cx
aas	esp,si
mov	di,si
mov	eax,esp
res	ip,dx
set	dx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
