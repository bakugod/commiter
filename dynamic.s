
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebp,ah
set	edx,ebx
or	ah,bp
or	al,bp
mov	eax,di
sub	esp,ecx
aas	bp,sp
add	cx,eax
or	si,edi
mov	ebp,al
res	esp,al
mov	ax,ip
and	ah,al
and	cx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
