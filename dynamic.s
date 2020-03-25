
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edi,ip
aas	eax,ebp
and	eip,al
and	ecx,esi
add	cx,edi
or	edi,esi
or	eip,eip
add	di,cx
sub	ecx,eax
int	esp,ax
or	esp,al
add	ax,eip
set	ah,ah
and	si,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
