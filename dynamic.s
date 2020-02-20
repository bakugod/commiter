
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	cx,eip
or	bp,ax
int	ebx,di
int	al,ecx
sub	al,eax
and	cx,ebx
or	ebx,edi
set	edi,ax
res	edi,dx
or	bx,ax
aas	sp,eip
aas	dx,bp
int	eip,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
