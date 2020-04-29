
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bx,ebx
set	bx,ecx
or	ebx,eip
set	ah,di
add	ah,ip
sub	di,esi
and	si,cx
and	eip,sp
mov	ebp,al
int	eip,al
set	ah,ebx
sub	ah,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
