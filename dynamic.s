
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esi,sp
res	ip,bx
or	ip,bx
set	ip,bx
add	sp,edx
set	esp,ah
add	bx,ecx
int	bp,ecx
sub	esi,ebp
or	eax,sp
int	eip,bx
aas	eax,al
add	dx,eip
add	eax,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
