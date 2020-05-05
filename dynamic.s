
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esp,ebp
set	sp,ebx
res	al,cx
sub	cx,si
res	esi,ax
or	ah,eax
set	al,edx
set	bx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
