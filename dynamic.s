
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,esi
aas	dx,edx
aas	si,esi
int	esp,eax
mov	esp,dx
and	edx,ebp
mov	esi,dx
or	esp,edi
or	eip,esp
int	ip,ah
res	bp,edi
mov	ah,esi
set	ebx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
