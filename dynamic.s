
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esi,sp
aas	ebx,ip
int	esp,esi
mov	edx,eip
aas	esi,ah
res	ecx,ebx
add	di,ax
or	edx,sp
aas	bp,ebx
sub	esi,ax
res	ebx,al
add	edi,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
