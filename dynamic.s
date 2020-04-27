
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	cx,esp
sub	ah,eip
res	esi,ax
sub	cx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
$ - msg			    ;data length
section .bss
res resb 1
