
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,ebp
add	di,bp
mov	si,ebx
and	esp,esi
sub	si,ah
set	edi,ax
sub	sp,edi
aas	eip,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
