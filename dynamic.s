
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bp,si
and	esi,al
sub	eax,ebx
or	sp,ebp
add	ip,ecx
or	ax,di
res	ah,edi
int	edi,edx
mov	dx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
