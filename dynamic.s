
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ip,ah
aas	bx,eax
aas	ax,eip
mov	cx,esi
int	ah,edi
and	esp,ebp
set	ecx,cx
sub	dx,ax
aas	esi,edx
and	al,di
and	ecx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
