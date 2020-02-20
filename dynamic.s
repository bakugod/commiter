
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	al,eip
and	si,di
or	esp,ecx
mov	edx,ip
mov	ah,sp
res	ebp,ah
and	dx,edx
or	ah,bx
or	ax,ecx
or	dx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
