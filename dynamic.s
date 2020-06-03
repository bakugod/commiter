
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ecx,ax
set	esi,ax
or	si,ebp
res	eip,sp
and	ax,bx
mov	eip,al
and	si,ah
or	edi,esi
or	esp,eax
set	eip,sp
and	esi,ax
or	si,edi
res	bp,ip
int	ebx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
