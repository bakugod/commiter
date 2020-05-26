
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esp,esp
int	al,si
aas	ip,esi
and	sp,ebp
add	sp,esp
add	al,eip
res	ip,eax
res	esp,esi
int	esp,ebx
and	bp,eax
and	ax,esi
aas	ebx,eip
and	cx,cx
res	ax,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
