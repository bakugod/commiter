
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebp,si
res	cx,al
aas	sp,ebp
mov	eip,edx
sub	ebp,eax
aas	dx,sp
add	ecx,dx
set	esp,di
int	eax,esi
sub	ebx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
