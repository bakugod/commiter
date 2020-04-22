
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ax,si
res	bp,eax
set	eip,si
mov	ebx,cx
or	al,ebx
add	esi,ax
mov	ecx,ip
sub	ip,sp
or	esp,ax
int	ebp,edx
mov	cx,ebp
aas	esi,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
