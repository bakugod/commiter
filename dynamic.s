
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esp,cx
int	eip,edi
add	sp,si
or	ax,al
int	esp,al
mov	ebp,edx
sub	ebx,bp
sub	eip,esp
add	bp,ebp
res	bp,eip
aas	cx,dx
and	bp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
