
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	al,bx
res	ip,ax
sub	eip,edx
set	edx,ax
add	edi,edx
mov	esi,ebp
and	esi,ebp
add	eax,eip
and	ebx,bx
int	eax,ax
set	esi,ah
res	ah,eax
set	sp,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
