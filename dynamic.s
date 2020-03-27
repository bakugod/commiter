
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	di,ebp
aas	sp,sp
mov	ax,eip
int	eip,ebp
int	bp,ax
sub	ip,di
set	esp,cx
sub	di,edi
add	di,bp
mov	sp,di
set	cx,esp
int	sp,bx
int	bp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
