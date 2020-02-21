
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,edi
sub	di,edx
res	ip,ip
and	ip,al
and	ax,eax
mov	eip,ebp
or	esp,bx
aas	cx,si
add	esp,eax
mov	edx,edi
mov	bp,di
add	bp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
