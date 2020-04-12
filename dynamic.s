
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,bp
and	cx,eax
aas	al,al
and	ax,sp
add	al,eax
add	esi,al
or	al,eip
int	edx,eip
int	eax,ebx
aas	edx,ax
add	edi,esp
res	eip,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
