
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	al,edi
aas	ebx,al
and	edi,ebp
int	esp,ecx
and	eax,eip
mov	edx,bp
set	ax,eax
and	eip,cx
or	di,esp
sub	esp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
