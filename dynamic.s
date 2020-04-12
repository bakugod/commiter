
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esp,di
add	eip,ah
or	ip,ax
mov	ip,sp
add	ah,eip
add	edi,ip
or	ebx,ah
set	bx,dx
sub	sp,eax
int	al,ax
or	ah,ah
mov	al,dx
or	esi,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
