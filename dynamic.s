
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,ah
int	ebp,dx
and	eax,bp
sub	ah,esi
aas	eip,esi
res	bp,esi
or	cx,di
int	di,al
res	eax,ax
set	sp,ah
mov	cx,ebp
or	al,ebx
res	dx,edi
res	eax,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
