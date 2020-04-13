
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edi,ebx
sub	di,ip
res	ecx,eax
sub	cx,dx
aas	ip,sp
sub	si,ax
sub	cx,dx
or	ebx,eax
set	cx,edi
set	eip,edx
res	esi,edi
add	ax,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
