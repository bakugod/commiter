
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eip,al
and	edx,bp
int	ah,esi
mov	ecx,eax
or	eip,esp
res	eax,ip
set	ip,esp
aas	eip,ip
add	si,ebp
sub	si,ax
mov	ip,bp
add	ebx,ah
add	ah,esi
add	ip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
