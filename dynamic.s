
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	sp,esi
res	esp,ecx
int	ip,ecx
add	ebp,ecx
add	sp,esi
aas	bp,eip
sub	esi,edx
sub	dx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
