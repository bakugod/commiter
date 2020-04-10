
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,eax
aas	ebx,ebp
int	ah,bp
sub	esi,ip
add	dx,ip
res	sp,ebx
mov	ebp,eip
set	ebx,edx
and	eip,ebx
aas	bp,ah
and	ip,ebx
sub	di,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
