
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,ip
and	al,sp
int	bx,di
aas	edi,ebp
and	ah,ecx
and	cx,edi
mov	ebp,sp
res	ecx,edx
mov	dx,sp
mov	ah,edx
res	ebp,ebp
aas	eax,eip
int	ip,ax
add	bp,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
