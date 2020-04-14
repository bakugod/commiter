
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edi,ebx
set	ah,ip
or	ecx,si
and	edx,ebx
set	eip,esp
sub	eip,esp
set	ax,sp
aas	eax,di
int	edx,ecx
sub	si,bp
set	di,edx
aas	ip,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
