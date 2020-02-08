
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	eip,di
add	sp,eax
add	ebp,esp
and	sp,cx
sub	ebx,ecx
aas	dx,sp
sub	edx,ebx
int	eip,bx
mov	esp,ip
sub	di,bx
mov	edi,si
int	ebp,cx
int	eax,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
