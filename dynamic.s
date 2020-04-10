
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ip,dx
sub	bp,ah
add	esi,al
sub	edi,ecx
and	bp,ah
int	esi,bp
and	eip,esi
and	esi,si
and	ah,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
