
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	al,eax
res	ebx,eip
aas	eip,ecx
res	ah,edi
add	ah,esi
res	di,ah
res	ebp,edi
set	ecx,ebp
int	edi,edi
or	di,esp
aas	edx,ax
sub	ax,bx
mov	bp,ah
or	esp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
