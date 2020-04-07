
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eip,ebp
add	cx,dx
and	bp,ax
aas	dx,ip
sub	dx,eip
res	al,esp
int	ip,di
aas	ebx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
