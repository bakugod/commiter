
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bp,si
set	bx,eip
aas	esp,ebp
mov	al,esi
or	ax,edx
aas	bx,sp
or	ebp,ebx
sub	bx,esi
mov	edi,bp
mov	ecx,eip
mov	sp,ebx
aas	di,dx
res	ecx,edx
mov	ebx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
