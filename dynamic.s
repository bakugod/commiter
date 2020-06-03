
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,esp
sub	di,eip
aas	dx,edi
aas	eip,edi
add	cx,sp
add	si,ebx
aas	ecx,si
and	cx,ebp
set	esp,al
sub	cx,ebp
res	al,sp
int	esp,eip
set	cx,edx
int	ax,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
