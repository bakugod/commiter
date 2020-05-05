
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,di
and	edx,edi
or	si,ip
sub	si,sp
aas	ecx,eax
add	al,bp
and	si,ebp
aas	cx,dx
res	ah,si
sub	sp,si
sub	ebx,edi
or	di,sp
mov	edx,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
