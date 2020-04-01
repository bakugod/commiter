
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ecx,al
add	edi,ip
int	esp,al
int	di,edi
and	ecx,eax
or	bx,al
add	al,esp
and	ip,ebx
aas	si,ecx
mov	ecx,ip
int	sp,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
