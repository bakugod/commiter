
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eip,eip
mov	edi,dx
or	ecx,esi
int	ebp,ax
sub	sp,eax
res	bx,dx
aas	bx,sp
int	di,sp
or	ebx,ebx
or	cx,esp
mov	bp,ip
or	ebx,esi
or	ebx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
