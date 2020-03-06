
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,ah
set	ebp,ecx
or	cx,ecx
sub	ebx,al
sub	bp,si
sub	ax,ecx
res	ebx,eip
set	al,ax
and	cx,eax
int	ebp,si
set	ax,edx
and	ax,bp
set	cx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
