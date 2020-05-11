
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	al,edx
mov	ebp,sp
int	eip,ebx
aas	ip,edx
or	esi,edx
set	ecx,ip
int	ecx,esp
int	di,eax
sub	esp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
