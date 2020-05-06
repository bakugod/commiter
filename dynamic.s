
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bx,bp
sub	edx,dx
set	al,edx
res	eax,eax
or	dx,sp
aas	ip,dx
aas	esi,esi
int	bp,cx
and	bx,ecx
and	edx,edi
res	si,bp
int	edx,si
res	di,ebx
add	ax,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
