
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ip,esp
mov	ip,eip
sub	ip,di
res	esp,ecx
res	edi,ah
res	cx,cx
sub	ax,dx
res	cx,cx
int	ax,esi
set	al,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
