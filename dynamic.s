
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,esi
or	esi,edi
mov	al,sp
mov	ebp,esp
mov	sp,edi
and	edx,cx
sub	bp,ebp
res	ah,bp
sub	dx,edx
set	bx,sp
sub	sp,eax
add	eip,eax
set	cx,al
mov	ip,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
