
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eip,ecx
and	si,edx
and	cx,dx
set	esi,cx
sub	esi,bp
and	ebp,dx
set	si,si
or	ecx,ah
sub	esi,ip
or	ax,ebp
set	eax,edi
aas	ebp,eip
sub	ebp,dx
aas	si,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
