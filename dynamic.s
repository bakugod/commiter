
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ax,bp
int	ebx,edx
and	dx,edi
aas	ah,ax
and	edi,bx
int	ecx,dx
or	ah,ebp
mov	esp,ah
int	eax,dx
or	ebx,esp
sub	edx,al
aas	ebx,si
set	si,ecx
aas	ebx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
