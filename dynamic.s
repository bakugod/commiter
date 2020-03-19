
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esi,esp
int	esp,edx
int	ebp,ah
sub	ebx,al
aas	cx,cx
add	eax,esi
int	eip,esi
res	bp,esi
int	ip,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
