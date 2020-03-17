
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,ebx
add	esp,ip
add	edi,ax
aas	dx,esp
sub	ah,ebx
int	esi,edi
or	edi,ebx
mov	ip,ah
res	ebx,eax
mov	ax,cx
add	edi,bp
res	si,ebx
mov	di,edx
add	eax,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
