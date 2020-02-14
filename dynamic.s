
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ax,di
mov	bp,ip
res	di,ax
sub	eip,eax
int	dx,ah
res	cx,eip
res	ip,edx
and	eip,cx
set	ebp,al
add	edi,ax
set	di,ip
or	esp,sp
res	ah,al
or	sp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
