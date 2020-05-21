
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,ax
set	esp,esi
sub	ah,ip
and	di,sp
res	ax,bx
add	ip,al
add	ip,ebp
int	esp,esp
mov	ecx,cx
aas	ecx,ebp
add	edi,ebp
res	sp,bp
add	edx,edi
int	edx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
