
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,ebx
int	ecx,edi
int	eax,si
and	esp,ah
int	al,esi
int	eax,ax
int	eip,sp
add	ecx,di
aas	sp,dx
res	ip,edx
add	edx,ebx
or	cx,di
int	esp,eip
and	esi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
