
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edi,bp
and	dx,bx
aas	ebx,ah
mov	esi,eax
sub	ip,esp
and	ip,ebx
sub	ax,ip
int	ip,esi
and	esp,ebp
add	eip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
