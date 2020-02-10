
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edi,ip
add	ip,bx
aas	ah,ah
sub	ah,ax
or	esp,di
and	bx,ah
mov	ah,ebp
res	dx,esp
add	ecx,al
sub	si,esp
aas	ip,bp
add	edi,edx
aas	sp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
