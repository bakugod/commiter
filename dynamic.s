
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ecx,ebx
or	dx,sp
add	ah,edi
res	ax,di
add	al,ax
add	ecx,edi
or	di,bp
and	edx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
