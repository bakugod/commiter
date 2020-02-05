
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	al,ax
or	ebx,di
aas	di,ebp
mov	di,eax
aas	sp,ebp
res	al,eax
res	ax,edi
int	bp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
