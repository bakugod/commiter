
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esp,si
sub	dx,eip
and	bx,si
and	cx,esp
int	ah,si
and	edi,al
set	ax,edx
res	ecx,ah
set	si,ecx
mov	cx,di
or	ecx,ax
sub	di,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
