
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esp,eip
or	esi,esp
and	al,eax
sub	esp,esi
add	esi,ebp
res	esp,ebp
add	eax,eax
set	edx,eax
aas	ebx,dx
res	ax,esi
add	ebx,sp
and	ah,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
