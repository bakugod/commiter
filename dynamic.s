
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eax,esp
mov	ecx,al
or	ax,si
mov	ax,esi
res	esp,di
and	ax,di
sub	ecx,di
res	ecx,eax
set	ecx,esi
and	sp,si
mov	ecx,ah
res	dx,ip
add	sp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
