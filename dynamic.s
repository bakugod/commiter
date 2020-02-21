
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eip,edi
res	dx,di
or	sp,eip
int	dx,bx
aas	ah,bp
int	eax,esi
res	edx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
