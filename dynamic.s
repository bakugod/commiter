
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,ah
and	bx,ip
add	sp,di
set	al,ecx
mov	bp,bx
and	ax,ax
sub	sp,ebx
res	ax,edx
add	sp,ebp
mov	cx,eip
mov	sp,esi
or	esp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
