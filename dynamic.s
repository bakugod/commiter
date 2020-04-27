
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	di,al
aas	ecx,di
set	ebx,esi
and	ah,edx
int	eax,ecx
and	bx,esp
int	esi,bp
sub	edi,si
int	bx,ebp
add	esp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
