
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	dx,ebp
set	ebp,esi
set	ax,ecx
res	cx,esp
res	ebp,si
or	bp,ah
sub	al,cx
set	ecx,ax
mov	bp,al
or	sp,edi
mov	ah,ebx
or	si,si
sub	ip,bx
int	sp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
