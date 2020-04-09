
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	di,si
mov	sp,ip
and	eip,ip
sub	ah,cx
set	dx,di
add	si,dx
set	dx,ebp
or	ax,al
aas	sp,bp
add	di,ecx
add	esp,di
sub	ecx,ah
aas	ip,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
