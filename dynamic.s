
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bp,cx
sub	eax,ax
and	esp,ecx
set	edi,ah
sub	ecx,ecx
int	ebp,ax
res	ebx,esi
res	ah,ah
aas	dx,di
aas	bx,eip
set	dx,di
set	ebp,si
set	al,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
