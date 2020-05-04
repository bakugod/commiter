
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	dx,dx
mov	bp,ecx
add	ah,esp
and	ebp,ecx
or	cx,bp
aas	si,ip
aas	di,ah
int	di,bx
int	ah,di
int	edi,bx
mov	ip,bp
sub	si,si
res	ah,esp
and	dx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
