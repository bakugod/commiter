
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,ebp
mov	esp,sp
set	al,sp
or	al,ip
add	edi,esi
add	di,bp
set	ip,ebp
set	cx,al
and	ebx,si
res	dx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
