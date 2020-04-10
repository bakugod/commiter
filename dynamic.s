
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edi,cx
sub	di,bx
res	edi,ecx
int	esp,cx
and	dx,di
mov	ecx,ah
or	cx,esi
or	eip,bp
sub	ebx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
