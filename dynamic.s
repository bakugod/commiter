
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ax,eip
and	bp,di
add	ecx,ebx
add	ebp,ah
sub	dx,ecx
mov	ecx,al
or	ecx,ip
add	si,ip
sub	edi,ip
add	al,eax
res	ebp,eip
or	di,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
