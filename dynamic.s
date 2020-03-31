
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebp,ecx
res	cx,esi
add	ip,al
set	cx,al
and	eax,esi
add	al,si
mov	ebx,di
or	ip,al
aas	ebp,ip
mov	edx,dx
sub	edi,esi
aas	si,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
