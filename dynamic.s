
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ah,bp
aas	ebx,ah
add	eax,ah
sub	ecx,ip
mov	edi,ax
res	ebp,al
and	ebp,esi
sub	esi,ip
set	sp,dx
res	edi,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
