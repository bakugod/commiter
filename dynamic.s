
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ebx,ecx
and	al,esp
add	ebp,ebp
sub	dx,esi
add	di,eax
or	esi,eax
mov	ebx,edx
mov	cx,ecx
or	dx,ip
add	ip,eip
or	eip,dx
and	eip,bp
int	ip,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
