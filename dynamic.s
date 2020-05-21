
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	dx,bx
add	eip,ip
sub	eax,eax
res	edi,edx
aas	esp,sp
sub	edx,bp
set	al,di
aas	esi,eip
and	ecx,ebx
or	ebx,di
sub	ebp,ah
sub	sp,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
