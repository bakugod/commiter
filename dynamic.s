
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,si
add	si,ecx
add	bx,esp
and	si,cx
mov	eip,al
aas	ebx,esp
and	al,bp
res	bx,eax
and	ax,bx
int	ebx,cx
or	ecx,ecx
aas	edi,sp
aas	ax,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
