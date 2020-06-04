
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebx,bp
and	edi,si
and	si,edi
add	sp,ecx
res	eip,al
add	bx,ecx
aas	esi,ah
int	ebp,ax
or	si,bp
res	al,edx
set	ah,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
