
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esp,eax
and	ah,si
res	edi,ebp
sub	eax,al
res	edx,esp
set	ecx,al
res	di,bp
set	edi,ip
mov	esi,cx
mov	si,cx
or	eip,esi
int	edx,ah
res	bx,edx
sub	ax,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
