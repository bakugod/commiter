
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,ebx
or	al,ip
sub	ebx,eip
add	al,ebp
or	ecx,cx
sub	ecx,ecx
add	bx,di
int	si,ebx
sub	ebx,ax
mov	si,ah
aas	al,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
