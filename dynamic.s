
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esi,bp
sub	ebp,di
set	cx,ax
int	eax,bx
add	ax,esp
mov	cx,ip
and	si,ebp
and	si,ebx
sub	di,si
aas	di,sp
and	esp,ah
aas	eip,cx
or	di,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
