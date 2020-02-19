
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	dx,eax
add	eip,ip
or	ip,ip
res	di,ebp
sub	ax,edi
aas	bx,sp
int	al,edx
mov	ecx,ebx
aas	edi,ip
add	sp,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
