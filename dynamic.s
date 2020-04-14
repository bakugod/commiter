
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	al,esp
set	edi,dx
res	eip,esi
mov	esi,ebx
aas	cx,ip
mov	esp,ax
and	ip,ah
int	ip,ip
sub	di,ebx
aas	ah,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
