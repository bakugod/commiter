
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,ecx
add	bp,al
aas	dx,ebp
add	edi,bx
sub	bx,di
mov	ip,esi
sub	bx,ax
aas	edx,edx
int	ecx,esp
mov	ax,ecx
and	esi,ax
res	esi,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
