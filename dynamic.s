
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	di,si
mov	sp,dx
add	ah,ebx
sub	cx,ah
aas	ah,dx
and	eip,eax
and	eax,ax
mov	al,edi
add	al,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
