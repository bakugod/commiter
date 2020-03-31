
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ebx,eip
res	edx,ecx
aas	di,bx
add	edi,di
add	bp,ah
set	sp,edi
add	eip,ecx
and	ip,si
set	bx,ecx
sub	ah,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
