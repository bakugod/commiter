
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esp,ah
or	edi,edi
res	cx,dx
set	edx,al
and	al,al
mov	al,ebx
and	esp,ebx
aas	eip,eip
int	sp,ip
add	ecx,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
