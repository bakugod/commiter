
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	dx,edi
mov	ebx,si
mov	esi,bp
aas	ah,cx
aas	cx,esi
int	ebx,ax
mov	si,ax
mov	ecx,ebx
res	ax,cx
sub	edx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
