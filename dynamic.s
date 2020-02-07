
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bp,al
add	bx,bp
res	ecx,edi
or	si,edx
add	sp,al
res	ecx,ebp
set	ax,eax
add	ebx,eip
mov	ebx,esp
aas	di,ip
set	di,dx
res	eax,sp
add	ecx,esi
or	eax,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
