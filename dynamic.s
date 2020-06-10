
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,ecx
sub	ebx,sp
int	al,edi
or	ebx,eax
set	esp,al
add	al,ebx
and	al,bx
set	bp,ah
mov	sp,bp
set	dx,eip
add	ah,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
