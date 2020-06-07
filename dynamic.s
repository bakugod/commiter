
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,ebx
res	dx,ebp
and	ax,ax
int	esi,edi
or	al,eax
mov	esi,sp
add	al,ecx
int	ebx,ebp
sub	ebx,eax
and	ip,ip
add	di,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
