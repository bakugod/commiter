
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eip,sp
or	sp,ax
sub	al,edi
mov	ebx,esi
sub	edi,edx
add	di,edi
add	eip,ebp
or	ecx,ebx
and	si,ah
and	ah,ax
set	bp,esp
add	ebx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
