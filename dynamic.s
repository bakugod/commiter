
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	di,ecx
or	eip,eip
set	cx,ax
set	ip,cx
and	eax,edi
or	eax,esp
or	ecx,eip
or	edx,eax
and	si,si
sub	cx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
