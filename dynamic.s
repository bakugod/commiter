
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ip,eip
int	ah,dx
int	di,sp
set	sp,ecx
or	ecx,eip
add	edi,ecx
set	eip,eax
int	esi,di
or	ecx,esi
int	di,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
