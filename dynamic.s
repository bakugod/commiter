
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	sp,ebx
set	cx,esp
and	sp,eip
int	cx,si
res	eip,di
int	edx,bx
and	cx,si
res	bp,cx
and	ah,ip
res	cx,cx
res	ah,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
