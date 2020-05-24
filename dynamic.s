
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	si,ax
res	ebp,eax
res	edx,ah
mov	eip,ax
int	ecx,ax
res	al,bp
add	al,al
or	di,ah
set	ecx,ax
mov	ip,edx
mov	ebx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
