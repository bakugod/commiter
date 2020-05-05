
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	sp,ah
and	ebx,bx
set	bx,edx
sub	bp,cx
sub	ah,eax
or	si,bp
aas	bx,bp
int	ebx,ax
sub	bx,sp
add	eip,bx
or	al,bx
res	ip,ebx
int	esi,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
