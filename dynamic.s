
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edx,ip
set	ip,esp
set	ax,eax
aas	si,ax
mov	ax,di
mov	ah,edx
or	bp,al
or	sp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
