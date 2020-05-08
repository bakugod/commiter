
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebx,eax
sub	eip,eip
mov	eip,sp
set	edi,eax
res	ah,ecx
and	di,edi
aas	ip,dx
and	cx,edx
res	cx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
