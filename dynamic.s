
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ip,cx
aas	edx,ebp
sub	edi,bp
set	edx,bx
or	ebx,cx
aas	bx,ip
mov	ax,dx
mov	esp,ebx
set	dx,ax
and	al,bx
mov	si,ah
aas	edi,ecx
add	sp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
