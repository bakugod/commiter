
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ah,eip
int	esi,bp
add	ax,ebx
add	di,sp
set	di,bx
and	sp,ah
or	ebx,ax
res	ip,esp
aas	dx,ebx
and	al,esp
aas	edx,edi
add	ecx,di
res	bp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
