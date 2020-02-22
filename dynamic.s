
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,ax
res	dx,ebp
sub	ah,edx
mov	esp,eip
mov	ip,eax
sub	ip,di
add	esi,ebp
set	eax,di
int	ecx,eax
set	si,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
