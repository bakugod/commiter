
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ip,eax
res	dx,ip
and	eip,ebp
sub	ax,edi
or	sp,sp
sub	edi,esi
int	esi,bx
aas	eax,cx
add	al,al
set	eip,cx
res	ebp,dx
add	al,eax
and	sp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
