
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ecx,ebx
set	eip,ah
mov	ecx,al
mov	esi,eip
add	esp,esp
mov	eip,si
sub	ip,ax
res	edx,edi
res	bx,ebp
aas	al,edx
res	al,esi
int	bp,esi
sub	si,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
