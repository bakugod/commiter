
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	si,si
res	edi,edi
set	ebp,ip
and	esi,ip
add	dx,esi
or	ax,esp
or	ebx,ecx
add	bp,dx
sub	eip,edx
or	dx,di
or	esp,ecx
and	ip,edi
add	ebx,edi
add	eax,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
