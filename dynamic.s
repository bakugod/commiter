
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	sp,eax
and	ah,sp
and	cx,cx
int	ip,ah
sub	esp,di
sub	ip,esi
int	bp,ah
add	ah,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
