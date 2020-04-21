
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebp,eip
sub	eip,ebp
int	dx,ebx
or	ecx,bp
set	edx,bp
set	esp,esp
and	al,esi
res	esi,esi
sub	ecx,dx
and	ip,dx
add	bp,edi
aas	ax,al
set	cx,sp
mov	ebp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
