
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	al,esp
add	eax,dx
res	dx,ah
mov	dx,ebp
or	ax,edi
aas	di,al
or	edi,bp
res	di,eax
int	edi,di
sub	al,ecx
res	bp,ebx
add	esp,ah
aas	ah,esp
mov	ah,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
