
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,ecx
aas	eip,si
mov	cx,si
aas	ip,ah
res	di,edi
set	edi,sp
and	bp,si
int	eax,eax
int	al,ebx
res	edi,bx
aas	sp,sp
sub	dx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
