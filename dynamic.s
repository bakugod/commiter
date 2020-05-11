
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	cx,ebp
sub	al,esp
aas	ebx,sp
int	ebx,di
int	al,esi
and	cx,sp
sub	cx,ecx
int	ip,eip
aas	ah,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
