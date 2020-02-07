
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edx,ah
set	sp,eip
sub	sp,bp
add	ip,bx
sub	bp,bx
set	cx,ip
sub	edx,al
sub	eip,ip
int	bx,dx
and	di,dx
or	eax,esi
set	ecx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
