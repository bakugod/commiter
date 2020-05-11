
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edi,ebx
res	al,ecx
add	sp,esp
mov	ecx,ebx
mov	di,edx
add	edx,ah
add	edx,ebx
mov	sp,ecx
sub	al,sp
mov	ecx,ip
aas	sp,eax
aas	sp,dx
set	dx,edi
and	sp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
