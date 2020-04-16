
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bp,cx
and	al,ah
set	cx,bp
and	ax,ebx
and	bx,eip
aas	bp,al
mov	edi,si
aas	edx,dx
or	bp,bp
set	edx,al
mov	edx,ax
aas	esp,esi
mov	sp,ax
int	bx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
