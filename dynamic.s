
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eip,edx
res	ecx,ip
and	ebx,edx
int	esp,bp
sub	ebp,sp
or	cx,dx
mov	ip,di
res	eip,ecx
mov	ah,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
