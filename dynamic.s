
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	al,edi
or	esp,sp
int	al,cx
add	ebx,ax
and	al,eip
mov	ebx,edx
res	edx,sp
add	al,ebp
or	dx,bx
and	di,esi
aas	esp,di
set	ah,ah
aas	sp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
