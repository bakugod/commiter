
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebp,sp
mov	al,ah
int	bx,sp
set	bp,esi
res	bp,bp
mov	edi,ebx
sub	ax,ebp
or	al,ecx
set	ah,ecx
int	edi,edi
or	edx,ax
sub	al,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
