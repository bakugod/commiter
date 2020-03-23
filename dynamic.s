
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,edx
int	ax,ip
int	ecx,si
add	edi,edi
int	ah,ax
aas	di,si
and	ip,ebx
res	eip,edx
res	ip,esp
sub	ip,edx
add	di,sp
and	edx,ebp
int	al,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
