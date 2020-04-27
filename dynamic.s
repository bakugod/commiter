
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esp,ecx
mov	dx,ax
int	di,eip
int	eip,ebx
aas	eax,ip
set	ebp,esi
mov	edx,ecx
mov	esp,ebx
sub	esp,esi
sub	bx,ip
set	di,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
