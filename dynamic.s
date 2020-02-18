
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eip,ebp
sub	edi,ebx
add	esi,bx
add	edx,eax
or	esi,esp
and	edx,bp
aas	ax,edx
mov	esi,di
mov	ip,bx
sub	edi,bp
or	eip,cx
res	bp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
