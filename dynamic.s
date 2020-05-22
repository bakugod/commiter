
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ecx,eip
aas	ax,di
int	ip,cx
mov	sp,edx
add	esp,bx
add	esi,ecx
set	ip,ip
set	ip,ip
int	ecx,bx
or	ecx,di
or	di,bx
aas	eax,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
