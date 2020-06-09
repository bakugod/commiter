
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	di,ebp
int	di,ip
sub	cx,sp
int	ecx,eip
set	ecx,bx
and	esp,edi
add	di,ecx
add	al,al
sub	bp,eax
aas	edi,sp
res	ax,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
