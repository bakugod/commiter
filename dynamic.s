
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bx,eax
sub	ip,esi
or	ax,bp
or	ebx,edi
res	ah,dx
sub	edi,bx
mov	si,ah
sub	ip,ebp
aas	bx,eax
set	di,ip
set	si,ebp
set	eip,edi
and	bx,eip
sub	esi,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
