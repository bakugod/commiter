
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esi,edx
and	esp,di
and	ip,ah
sub	esi,ecx
add	cx,ebp
mov	sp,cx
int	si,dx
and	eax,ah
mov	esi,eax
or	dx,ebp
sub	si,edx
res	sp,dx
sub	dx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
