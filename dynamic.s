
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,esp
aas	cx,bp
int	eip,eip
add	dx,di
add	al,ax
and	eax,ip
int	ah,dx
res	ebp,ebx
mov	ax,esi
mov	di,dx
add	ah,edi
aas	ecx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
