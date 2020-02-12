
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	dx,bx
int	al,bp
int	esi,esi
set	edi,eax
sub	eax,dx
res	bp,sp
and	ecx,esp
sub	cx,sp
aas	esp,di
set	ebx,cx
and	eax,ip
aas	esi,eip
sub	si,ecx
add	di,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
