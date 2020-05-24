
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eax,dx
and	edi,eax
add	eax,eip
aas	dx,esi
or	ebx,sp
and	sp,al
aas	ebp,al
aas	dx,ebp
int	si,ax
int	edx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
