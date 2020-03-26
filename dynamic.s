
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	cx,bp
aas	dx,ebx
mov	eax,edi
and	ebp,ebx
int	esp,di
and	ebp,eip
add	si,eip
or	si,ebx
and	esi,bp
res	eip,eip
and	al,edi
sub	eip,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
