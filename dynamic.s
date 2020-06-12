
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eax,ax
add	ax,ebp
res	cx,ip
aas	ah,eip
and	di,edi
aas	edx,ebp
res	ebx,al
res	bx,esi
set	edi,ax
add	edx,cx
set	si,ebp
aas	eip,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
