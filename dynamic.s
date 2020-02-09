
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esp,esp
res	cx,cx
or	di,esi
mov	ip,si
sub	sp,ip
mov	dx,edx
int	esp,dx
res	bx,al
res	ecx,ax
mov	dx,esp
aas	eip,esp
aas	ebx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
