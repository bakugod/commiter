
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebx,ecx
or	al,al
res	al,dx
set	ax,ax
mov	si,cx
or	esp,eax
or	esi,ebx
add	esi,ah
mov	ecx,esp
res	ebx,ah
aas	esp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
