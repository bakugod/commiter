
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ip,ebx
and	eip,ecx
mov	ecx,eip
and	esi,ax
sub	bp,ebx
mov	ebx,edi
int	esp,ax
and	eip,eax
sub	ebp,ecx
aas	dx,bx
aas	ebx,al
or	eip,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
