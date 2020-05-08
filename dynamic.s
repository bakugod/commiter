
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,dx
sub	sp,edi
int	ebp,bx
add	esp,eax
mov	edi,ebp
int	bp,eip
sub	ax,ah
aas	dx,sp
mov	eip,sp
res	dx,cx
and	ax,si
int	si,si
mov	edx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
