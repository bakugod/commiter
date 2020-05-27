
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edi,ip
add	edx,eip
sub	edi,bp
add	ip,si
mov	ah,ah
or	si,ax
sub	di,edi
res	sp,sp
res	ecx,ebp
and	ebp,ecx
or	ax,dx
sub	ebx,dx
aas	esp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
