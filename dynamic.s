
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	si,edi
add	cx,ebx
aas	bx,eip
or	ebx,bx
res	sp,bp
res	si,ebp
or	di,edi
mov	bp,ax
and	bx,al
or	ebp,ebx
and	al,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
