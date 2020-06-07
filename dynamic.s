
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edx,cx
res	cx,ebx
sub	si,ebp
sub	al,ah
int	bp,dx
or	eax,bp
res	eip,dx
int	bx,dx
and	ah,cx
and	al,esi
mov	sp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
