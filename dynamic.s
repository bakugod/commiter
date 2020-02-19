
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,bx
res	bx,si
int	eax,eip
set	bx,ebx
res	edx,ebx
or	eax,edi
and	eax,esi
add	esi,ah
add	ip,esi
or	bx,cx
or	ah,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
