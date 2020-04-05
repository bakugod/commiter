
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ah,bp
int	al,ecx
set	ecx,ax
set	al,ah
add	al,ecx
set	edx,ax
add	al,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
