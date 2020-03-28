
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	al,eip
aas	ip,ax
sub	si,al
mov	ecx,dx
add	esp,bx
add	edi,ah
and	ebx,bx
aas	cx,esp
add	bp,ah
mov	esi,bx
and	sp,ah
add	sp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
