
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ecx,si
res	ebx,ebx
set	al,ip
and	ecx,al
int	edx,ecx
int	esp,sp
int	bx,esi
or	cx,ip
set	bp,bx
res	esp,ebp
add	ip,edi
mov	sp,ax
aas	bx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
