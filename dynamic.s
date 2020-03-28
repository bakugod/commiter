
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	si,si
and	al,eip
and	di,edx
aas	al,ebp
int	eip,eip
mov	ip,edi
and	esp,sp
mov	esi,esp
aas	esp,bx
or	sp,bx
add	cx,esi
int	ecx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
