
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	si,ip
aas	edi,esp
or	si,edx
add	edx,di
or	dx,edx
set	sp,edx
and	bp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
