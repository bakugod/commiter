
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esi,ip
or	ecx,ah
and	cx,esi
add	al,di
int	ebx,ah
mov	ecx,esi
mov	eip,ebp
aas	eip,di
or	eip,edi
and	si,sp
res	cx,ebp
int	ebx,ip
int	eip,esi
mov	esi,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
