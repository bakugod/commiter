
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ecx,eax
res	sp,edx
or	bp,si
add	esp,sp
aas	eip,ax
aas	esi,edi
and	eax,bx
int	ax,ax
mov	esp,eip
and	ip,cx
res	esp,ah
int	bx,ebp
or	eax,si
add	ip,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
