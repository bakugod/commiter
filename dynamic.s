
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bx,ebx
or	esi,ax
and	al,ebp
int	bp,sp
and	esp,esi
and	esi,esp
int	ebx,esi
mov	ah,ip
set	di,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
