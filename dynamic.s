
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bp,ecx
int	sp,dx
int	ip,ebx
add	al,dx
add	sp,ecx
or	esp,ax
int	esp,dx
int	ax,sp
res	sp,cx
or	bp,esp
and	esi,ebp
and	bx,sp
and	edx,ip
and	cx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
