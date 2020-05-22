
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eax,ebx
res	esp,al
mov	ax,bx
and	bp,esp
set	si,esp
and	ebp,ax
mov	ah,sp
or	sp,ax
add	edi,ebx
or	dx,eip
int	edx,si
aas	eax,bx
int	sp,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
