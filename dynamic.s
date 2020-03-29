
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ax,esi
or	ax,si
sub	ebp,eip
or	bp,bx
sub	edi,esp
and	edi,ebp
add	bx,ebx
and	ecx,cx
aas	edx,sp
mov	ebx,ecx
add	ax,sp
add	eip,ax
add	edx,cx
res	ip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
