
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bp,sp
add	bx,si
int	bx,ecx
aas	ip,ecx
add	ebx,eax
and	sp,ebx
aas	ebx,edx
int	edi,ip
int	esp,ax
set	dx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
