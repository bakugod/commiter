
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	sp,esi
set	eax,eax
aas	di,edi
res	si,esp
aas	esi,ebx
and	eax,esi
or	ah,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
