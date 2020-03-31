
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ebp,edi
set	ebx,si
sub	bp,di
or	esi,edi
res	esp,si
add	di,dx
add	sp,esi
mov	di,ip
int	ecx,bp
and	cx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
