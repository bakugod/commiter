
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ax,ecx
sub	ip,esi
set	di,esi
mov	ip,esp
and	ebx,ax
add	ax,ah
add	bp,esp
aas	ah,al
or	ecx,di
sub	ebx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
