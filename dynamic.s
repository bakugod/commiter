
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esp,ebp
and	eip,esp
or	esi,esi
and	eax,ah
or	ecx,esi
aas	edx,eip
res	si,esi
res	bp,ebx
sub	di,edi
res	eax,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
