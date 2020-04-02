
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,eip
mov	esi,ebx
set	eax,esi
and	al,esi
aas	sp,edx
set	dx,eip
res	bx,ah
add	si,dx
set	eip,dx
add	edx,eax
int	esi,si
or	al,ebx
mov	eip,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
