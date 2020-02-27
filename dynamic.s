
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ah,dx
sub	eip,ebx
int	cx,edi
int	ip,cx
and	eip,ebx
or	ebp,si
and	ip,sp
aas	ax,ah
int	edi,si
sub	ebx,ip
res	ecx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
