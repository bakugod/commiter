
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	cx,di
mov	esi,bp
add	ax,edi
res	al,ax
or	ecx,bx
int	di,ah
or	ebp,esi
add	bp,ax
add	sp,edx
add	ax,al
int	ah,eax
aas	eip,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
