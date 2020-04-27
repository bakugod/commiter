
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bx,bp
and	dx,ax
aas	ip,esi
or	di,cx
aas	esi,si
add	ebx,ebx
set	bp,ecx
int	ax,di
aas	ah,eip
aas	cx,ah
and	esi,ebx
and	sp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
