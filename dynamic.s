
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ip,esi
sub	al,di
add	cx,esp
or	ecx,ah
int	esp,al
sub	esi,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
