
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ah,esp
and	di,al
res	edi,ah
set	si,di
sub	sp,si
or	ax,dx
add	cx,eax
and	edi,di
or	di,dx
res	di,esi
int	eax,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
