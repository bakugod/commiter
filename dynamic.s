
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,ah
and	sp,dx
int	esp,ip
and	edx,al
and	edi,ebp
add	edx,ecx
res	edx,sp
add	edi,ip
or	dx,eip
and	ah,eip
res	esp,dx
res	bx,si
int	eax,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
