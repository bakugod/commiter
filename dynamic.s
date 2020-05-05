
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eax,ax
add	bp,ah
aas	eax,cx
mov	ah,ax
aas	esp,ip
and	eip,ecx
set	ecx,si
or	esp,dx
and	sp,ebx
set	ip,ebx
int	ax,bx
int	cx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
