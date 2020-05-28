
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,ax
and	edx,al
mov	ecx,sp
and	cx,eax
set	ebp,si
or	bx,ax
mov	ebp,ebp
or	ebx,edi
or	bx,eax
or	ebp,eip
or	eax,cx
sub	si,ip
mov	eip,si
mov	dx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
