
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esi,eax
mov	ax,cx
sub	sp,bx
sub	sp,esi
sub	bp,edi
add	sp,bx
set	esp,bp
set	sp,eip
sub	esi,ah
mov	eip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
