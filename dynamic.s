
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	cx,ax
res	eax,ah
aas	edi,eax
add	esi,di
set	esp,si
mov	si,bp
mov	bp,si
sub	eip,di
mov	si,eip
set	di,al
res	sp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
