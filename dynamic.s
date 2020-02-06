
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ah,di
res	cx,bx
or	cx,esi
or	si,edx
set	esp,ah
aas	sp,dx
sub	esp,al
add	al,ip
set	dx,cx
add	si,ebx
set	eip,eip
aas	eip,ax
or	ah,bx
res	si,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
