
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	al,bx
mov	eax,bp
int	sp,si
aas	ebx,ebp
and	bx,sp
int	esi,ebp
res	esp,esi
sub	ax,ah
int	dx,cx
aas	cx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
