
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ax,ip
and	bp,esp
and	cx,al
set	di,edi
and	ax,cx
and	esi,esi
aas	ebx,edx
add	ebx,ecx
or	al,di
add	al,ecx
aas	ah,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
