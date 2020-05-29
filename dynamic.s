
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eax,ah
mov	esp,ebx
add	bx,cx
sub	eax,bp
res	eax,esp
aas	si,eip
set	al,ah
mov	eip,ecx
set	ah,edi
set	dx,bp
mov	cx,ah
int	eax,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
