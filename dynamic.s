
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ecx,ax
mov	bx,ebx
set	al,dx
res	eip,ecx
res	esi,ip
or	ax,bx
sub	ebp,eax
sub	ebx,cx
mov	ebp,ax
mov	eip,si
mov	sp,eip
int	sp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
