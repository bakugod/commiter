
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,eax
and	ecx,ax
set	eip,edi
set	esp,eax
aas	ecx,ecx
sub	edi,si
add	eip,ecx
and	eip,edi
add	ebx,cx
set	eip,eip
sub	ah,ax
set	ip,cx
sub	si,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
