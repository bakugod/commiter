
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	si,sp
int	cx,edi
sub	esi,ip
and	bx,eax
res	sp,al
res	ax,ecx
mov	esi,ah
and	esi,ecx
res	al,edi
add	si,esi
sub	ebp,edx
and	ebp,edx
and	dx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
