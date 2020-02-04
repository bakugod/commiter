
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eax,di
aas	al,ebx
mov	al,ax
add	bx,sp
add	sp,ecx
and	al,edx
add	edi,ah
sub	edi,ip
and	eip,al
add	sp,edi
res	edi,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
