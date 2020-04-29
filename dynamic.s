
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	dx,sp
aas	ebx,sp
mov	esp,si
mov	ebx,sp
or	ah,sp
mov	si,eip
add	edx,ax
add	edi,ebp
int	al,ax
sub	esp,ip
mov	edx,di
or	esp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
