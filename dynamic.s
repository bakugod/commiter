
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebp,bx
int	dx,bp
or	eip,al
sub	si,si
or	al,eax
aas	ip,si
res	bx,esp
or	al,ecx
or	eax,edx
sub	si,ebp
mov	al,al
sub	ax,edx
or	ebx,cx
and	ebp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
