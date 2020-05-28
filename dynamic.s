
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esi,edx
res	si,edi
int	ah,esi
int	ecx,bx
int	bx,edi
or	sp,ebp
aas	edi,dx
add	edi,ecx
add	sp,ax
aas	di,sp
int	esi,si
and	bx,ax
or	ebx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
