
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	di,ip
and	sp,cx
add	edx,edx
set	edi,sp
mov	ebx,ecx
aas	ebp,ax
aas	dx,esp
mov	eip,di
int	ecx,eip
set	dx,cx
or	al,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
