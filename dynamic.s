
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ax,ah
sub	bx,bx
or	ah,ah
add	eip,bp
set	al,eip
res	sp,ax
and	ip,edi
mov	esp,ip
mov	edx,ah
sub	ebx,ecx
aas	eip,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
