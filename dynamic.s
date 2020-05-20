
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	al,sp
mov	al,si
int	ah,edi
add	eax,ip
mov	ax,sp
add	eip,sp
res	eip,edi
mov	ebp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
