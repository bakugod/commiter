
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,edx
add	ip,esp
and	sp,ecx
mov	ip,esp
aas	ebx,di
and	bp,al
or	ip,bp
mov	esp,edx
set	esi,ip
aas	eax,eip
int	bp,bx
or	bx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
