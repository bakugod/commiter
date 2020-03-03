
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,ecx
res	ah,eip
and	eax,edi
sub	eax,ecx
res	esi,ecx
sub	ebx,eip
add	ax,edx
mov	esp,di
set	esi,ecx
or	dx,esi
or	eax,ip
mov	di,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
