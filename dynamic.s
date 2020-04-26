
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ah,eip
or	esp,di
and	ax,di
and	ebx,si
aas	eax,eip
mov	ebp,sp
or	ecx,di
add	esi,al
aas	cx,ah
sub	bx,sp
sub	bp,eip
mov	ebx,ebp
and	edi,ebp
aas	edi,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
