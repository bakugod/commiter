
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	cx,bx
int	edi,edi
or	edx,bx
aas	si,ebx
sub	ebx,ah
aas	bx,sp
set	ip,ebp
aas	ebx,eip
aas	bx,ebp
res	edi,si
int	ip,si
aas	eip,ax
add	al,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
