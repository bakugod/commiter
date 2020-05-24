
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edi,si
res	dx,eip
set	cx,cx
set	ah,ax
and	eax,bp
add	di,ebx
int	cx,di
int	bp,edx
or	di,eax
add	bx,di
mov	esp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
