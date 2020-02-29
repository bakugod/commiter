
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,si
add	ebp,ebp
sub	si,ebp
set	eip,di
and	bx,esp
int	esi,sp
set	sp,eax
set	ecx,dx
sub	edx,di
set	ax,ah
or	cx,ebx
aas	eip,bp
int	al,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
