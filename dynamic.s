
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	al,di
or	esp,ebx
aas	edx,ebp
aas	esp,edi
add	dx,ip
and	ebp,bx
mov	edx,si
add	ip,esp
int	ebx,cx
sub	ah,eip
sub	cx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
