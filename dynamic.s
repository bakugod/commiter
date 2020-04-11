
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bx,edi
add	di,esi
mov	ax,eax
and	al,edi
sub	esi,si
int	bp,eax
add	eax,al
aas	ah,ip
or	di,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
