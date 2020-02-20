
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edi,esp
aas	ip,esi
or	dx,si
and	bp,edi
aas	ecx,bp
and	dx,bx
add	bx,edi
aas	esp,ip
and	ax,eax
aas	di,dx
set	esp,eax
sub	al,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
