
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edx,cx
or	esp,ecx
aas	edx,edi
add	sp,ip
or	ip,dx
res	bx,si
add	ah,ip
and	di,di
sub	edi,esi
aas	eip,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
