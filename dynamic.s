
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	cx,ax
or	al,bp
sub	al,ebp
mov	ebp,al
sub	ah,eax
set	esp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
