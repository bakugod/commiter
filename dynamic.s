
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edx,eax
or	edx,ip
res	ip,bx
or	ebx,ip
int	esp,ax
mov	dx,ecx
res	esp,di
and	ip,ecx
add	edx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
