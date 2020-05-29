
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ip,ah
aas	dx,ah
mov	ebp,ip
mov	bx,bx
or	ip,bp
res	al,edx
int	ebx,ah
or	esp,dx
or	edx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
