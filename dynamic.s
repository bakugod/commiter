
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edi,ax
sub	ebp,edx
aas	ax,bp
int	bx,ip
int	ecx,al
mov	al,eax
mov	al,ah
res	ebp,esi
add	eax,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
