
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ecx,bx
or	ip,di
or	eax,cx
int	ebx,edx
set	ip,ecx
int	esi,esp
aas	edi,di
int	eax,al
or	ebx,di
res	bx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
