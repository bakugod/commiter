
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	cx,ax
res	eip,eax
add	ecx,ebp
or	esi,bx
mov	ebx,si
and	bx,ebx
and	eip,cx
sub	ecx,esp
mov	edx,esp
mov	ip,eip
mov	eax,ax
and	ip,ax
sub	edi,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
