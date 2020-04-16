
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebx,ax
sub	ax,ebp
and	ax,eax
and	esi,ecx
set	di,dx
mov	ebx,edi
sub	ebx,ah
mov	al,cx
or	ah,esi
res	al,ebp
add	ebx,di
or	ebp,ah
and	edi,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
