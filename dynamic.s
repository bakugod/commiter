
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	sp,eax
int	eip,dx
res	ebp,eax
set	al,ax
int	eax,bp
sub	dx,cx
sub	cx,ecx
res	ah,ebx
aas	esi,bp
mov	ah,bx
set	ebx,ecx
mov	bx,edi
mov	ip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
