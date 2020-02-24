
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,esp
int	edx,ebx
add	ecx,ah
int	di,eip
set	al,edi
int	sp,eip
set	dx,sp
set	bp,ebx
aas	edi,edi
aas	ax,edi
int	ebx,esp
sub	esp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
