
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ax,ecx
or	ip,ah
res	eip,cx
set	sp,eip
res	eax,sp
mov	dx,ecx
add	ax,eip
or	ip,eip
sub	edx,eax
int	edi,dx
set	bx,ip
mov	ecx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
