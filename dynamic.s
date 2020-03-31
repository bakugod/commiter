
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eip,eax
sub	ebp,ax
mov	esp,edi
int	eip,eip
int	sp,ah
and	esi,ah
int	ebx,si
add	bp,dx
and	bp,di
or	bp,cx
set	ebx,esi
or	esi,al
add	eip,esp
aas	bx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
