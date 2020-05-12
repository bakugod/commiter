
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,bx
add	ip,ebp
set	sp,ecx
res	al,edi
aas	edi,sp
res	ecx,eax
or	ecx,cx
aas	ah,ebx
add	ebx,cx
sub	bx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
