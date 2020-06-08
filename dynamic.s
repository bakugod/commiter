
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	dx,edx
res	esp,bx
mov	al,si
aas	esi,ip
sub	bx,edx
set	ebp,edx
int	esi,al
aas	ecx,bx
sub	ebx,esp
res	eax,bx
or	esi,eip
sub	cx,bp
res	ah,ebp
aas	ax,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
