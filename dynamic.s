
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	sp,si
aas	di,dx
and	esi,si
or	ah,eax
or	esp,bx
add	si,si
add	dx,ah
or	edi,sp
add	bp,si
mov	ecx,edi
add	eip,esi
or	ah,eip
mov	di,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
