
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edi,edx
add	si,edi
set	eip,ip
or	eip,ah
aas	ebx,edx
and	eip,esp
add	al,sp
mov	ah,ip
set	ip,ecx
res	ip,edx
res	ip,ebx
and	dx,esi
sub	edi,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
