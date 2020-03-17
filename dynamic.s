
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,ip
int	ebx,esp
res	ebp,bp
set	eip,cx
mov	ebp,edi
set	ax,al
res	dx,ebp
or	eax,ecx
and	ax,esi
add	eax,esi
add	bp,esp
set	sp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
