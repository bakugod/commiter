
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,ax
add	eip,sp
res	cx,bp
or	al,ah
mov	ebp,esp
int	eax,bp
mov	ecx,sp
sub	edi,ax
sub	si,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
