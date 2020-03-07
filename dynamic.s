
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ecx,esi
add	esp,ip
mov	eip,eip
aas	esi,dx
add	si,ebx
add	eip,esi
int	edi,eip
res	esi,cx
int	si,eax
sub	cx,bp
res	edi,ax
mov	ecx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
