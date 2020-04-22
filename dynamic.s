
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,ax
add	ebp,di
sub	ebp,ebx
add	si,ax
mov	ecx,ecx
and	edi,esi
int	ecx,ebx
mov	esp,eax
mov	ebp,si
res	esi,si
aas	bp,esp
res	dx,ebp
set	di,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
