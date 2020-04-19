
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eax,ah
add	di,esi
int	si,ebp
sub	edi,edi
int	ip,di
sub	ebp,ax
or	esp,ebp
mov	esp,si
int	ecx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
