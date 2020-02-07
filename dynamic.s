
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	al,ah
add	bx,eip
add	edx,eip
and	ebp,ebp
set	eip,edi
set	ah,ecx
set	cx,eip
mov	dx,al
and	ecx,ebx
res	sp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
