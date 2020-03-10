
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esp,edx
res	cx,ecx
int	ecx,ax
sub	ecx,eip
add	ebx,sp
or	ebp,ah
and	dx,esp
set	eip,di
set	ah,ebx
mov	ebp,eax
or	edx,esi
res	esp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
