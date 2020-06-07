
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	sp,al
set	ebx,ebp
set	edx,ip
or	ah,cx
int	dx,eip
set	edx,ebx
and	eip,si
res	edx,esi
add	edi,ax
or	ah,si
mov	dx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
