
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	di,ecx
mov	bp,bx
aas	edx,dx
mov	ecx,edi
mov	al,edx
sub	ecx,ebx
aas	ecx,si
or	di,dx
aas	di,eip
int	si,sp
int	bx,di
or	ax,dx
aas	sp,di
and	di,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
