
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	sp,ip
int	cx,sp
mov	bp,cx
set	esp,eax
or	ip,di
int	eip,ip
sub	eip,eip
or	eip,al
sub	dx,ebx
add	ebp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
