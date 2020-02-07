
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ecx,eip
mov	edi,dx
set	cx,dx
int	cx,ah
add	sp,dx
set	bp,esp
int	bp,ax
res	di,esi
set	edi,bp
add	ax,ebp
mov	al,cx
int	eip,ax
and	esi,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
