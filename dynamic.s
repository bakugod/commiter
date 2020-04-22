
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ip,esi
and	ah,ah
set	si,edx
mov	si,ecx
sub	eax,bp
add	al,ip
or	ax,edi
mov	ecx,ebp
and	dx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
