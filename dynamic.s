
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,esi
and	ebp,ip
int	bx,ip
add	dx,eip
set	sp,ebx
int	dx,al
sub	ip,cx
and	ecx,si
int	ax,edi
mov	bx,di
int	bx,ebx
int	eax,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
