
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esp,sp
int	di,ecx
int	si,esi
set	esp,bp
sub	sp,esp
aas	sp,si
and	bp,di
aas	ecx,bx
int	ebx,eax
add	bp,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
