
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esp,edx
and	cx,sp
add	esi,al
aas	ax,sp
aas	esp,cx
mov	edx,bp
or	ip,esp
set	eip,ip
and	eax,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
