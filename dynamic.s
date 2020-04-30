
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eax,eax
sub	ax,sp
or	dx,ah
sub	si,dx
or	ebx,sp
int	edi,esi
res	edx,esi
int	esi,si
set	ebx,sp
int	ah,ip
int	al,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
