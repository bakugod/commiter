
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,edx
int	edi,bp
add	ah,esi
aas	edi,ebp
mov	ebx,eax
aas	bp,edx
sub	edi,eip
mov	eax,ip
res	ebx,dx
sub	di,ebx
aas	cx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
