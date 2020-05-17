
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebx,bx
and	edx,ecx
and	ip,esp
and	eip,esi
aas	dx,ebx
res	ip,eax
set	cx,eip
int	edi,esi
and	eax,ebp
mov	eax,esi
and	eax,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
