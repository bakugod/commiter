
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	cx,eax
or	di,sp
int	ebx,edx
or	sp,cx
set	ax,al
add	edx,si
int	edi,edx
aas	si,ax
int	di,si
mov	si,ax
set	edx,ebx
add	di,sp
add	edx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
