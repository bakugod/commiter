
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ecx,eax
set	ax,ax
mov	bx,ax
mov	cx,ebx
int	ah,ah
sub	esp,edx
aas	esi,bp
or	bp,ah
res	cx,si
add	al,eax
and	ebx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
