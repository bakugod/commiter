
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edx,eip
set	esi,eip
mov	ecx,ax
and	sp,eax
and	al,bx
int	edx,edi
sub	eip,al
or	ecx,edi
aas	ebx,esi
res	di,di
int	edx,ah
sub	edx,esp
add	ebp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
