
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esp,ebx
or	di,cx
int	edx,edi
and	di,ah
res	esi,eax
set	ah,dx
aas	ip,ip
mov	dx,edi
res	edx,ax
aas	eax,bx
set	dx,edi
mov	cx,ebx
res	ax,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
