
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	al,ax
res	ah,edi
int	bp,ebx
and	edx,eax
int	bp,cx
set	edi,ip
int	edx,sp
aas	cx,dx
aas	ah,edx
int	sp,ecx
and	ecx,sp
add	si,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
