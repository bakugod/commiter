
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,si
res	edi,si
aas	ebp,sp
mov	cx,ip
int	esi,bx
or	esp,ip
mov	edx,ebx
and	di,bp
or	esp,bp
sub	dx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
