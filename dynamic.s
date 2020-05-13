
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	si,si
set	al,ax
mov	edx,esp
sub	edx,bp
aas	si,bp
aas	sp,esp
int	eip,ah
int	eax,al
or	esp,dx
or	al,bp
or	eip,di
or	bp,si
res	ebx,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
