
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bx,sp
or	sp,al
sub	ah,ebx
res	eax,esi
or	bp,ip
int	esp,cx
sub	esi,bx
sub	dx,ax
or	bp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
