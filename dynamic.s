
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esi,eip
sub	al,edx
or	eip,sp
sub	esi,ip
mov	di,edx
int	cx,sp
int	si,bp
add	sp,ax
res	esp,ip
mov	esi,ax
mov	esi,ip
add	si,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
