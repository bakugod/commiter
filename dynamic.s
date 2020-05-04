
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bx,esi
add	si,cx
and	dx,ip
aas	dx,ax
or	eax,esi
res	ebp,si
int	edx,ax
int	esi,esi
res	sp,esp
set	sp,eax
mov	ebx,sp
mov	cx,sp
mov	al,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
