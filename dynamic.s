
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ecx,di
add	ah,edx
aas	edx,esp
or	bx,esi
int	esi,si
mov	ip,edi
set	eax,si
set	ecx,esi
and	edi,edx
set	edx,ebx
or	ebp,bx
or	esp,ax
int	ip,dx
set	edx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
