
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eax,edx
and	ebp,sp
add	eip,al
int	edx,edi
sub	bp,edi
int	bp,ebp
and	eip,bp
set	eip,ah
aas	si,ecx
add	si,ax
or	edx,esi
or	eip,bp
or	esp,edi
res	esi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
