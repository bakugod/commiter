
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bp,ax
and	dx,ax
mov	bx,bp
mov	ah,si
mov	eip,si
sub	bp,esi
int	sp,ecx
or	ebp,dx
int	bp,esi
int	ah,bx
sub	dx,ax
aas	ip,ebx
int	cx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
