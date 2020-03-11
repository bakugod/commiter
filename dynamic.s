
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bx,ebp
int	eax,eax
or	ebx,ah
sub	edi,ip
set	ebx,ah
sub	cx,si
int	bp,sp
add	esp,ecx
int	cx,dx
or	edx,bx
or	esp,ax
set	eip,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
