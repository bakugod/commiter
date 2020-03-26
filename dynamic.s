
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bp,eax
res	al,di
and	ip,ecx
aas	cx,ip
add	ecx,eip
sub	esp,cx
mov	bx,edi
and	edi,edi
or	al,bp
or	ebx,bp
aas	esi,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
