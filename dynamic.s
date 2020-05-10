
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	al,esi
set	ebx,esp
int	cx,di
or	ebp,ip
and	di,sp
or	ebx,eax
add	cx,dx
sub	ebx,ah
res	bp,sp
int	esi,ebp
and	cx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
