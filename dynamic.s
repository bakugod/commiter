
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ip,ecx
sub	sp,ebp
mov	al,eip
res	esi,dx
set	si,bp
res	al,esi
int	ax,esp
int	ecx,ax
and	dx,dx
and	sp,esp
mov	ip,edi
aas	edx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
