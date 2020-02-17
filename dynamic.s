
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,eax
and	al,sp
set	ip,dx
sub	bp,ah
set	eax,si
mov	esi,eip
sub	edi,eax
and	edi,eax
res	si,ax
and	sp,sp
res	esp,edi
aas	edi,ax
int	cx,ah
set	bx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
