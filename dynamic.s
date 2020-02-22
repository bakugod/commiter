
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bx,ah
and	si,esi
add	eax,ah
int	al,sp
aas	sp,di
add	al,al
and	cx,dx
add	sp,ax
mov	di,edx
add	eip,ebp
and	sp,eip
aas	dx,ax
res	edi,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
