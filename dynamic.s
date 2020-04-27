
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,eax
add	edi,bp
mov	ebx,ecx
or	si,di
sub	si,al
or	si,ebp
add	sp,di
or	si,ebp
int	di,edx
mov	ax,ebp
or	eax,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
