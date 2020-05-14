
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edi,edi
mov	ebp,ebx
aas	eip,dx
res	ecx,esp
res	ecx,eip
int	edi,si
or	ah,ip
int	ip,ah
add	esi,edx
int	di,edx
mov	ah,di
res	ecx,esi
res	edi,ax
sub	edi,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
