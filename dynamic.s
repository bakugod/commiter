
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ax,di
and	bp,sp
mov	ecx,edi
mov	al,al
aas	ecx,dx
sub	ax,edi
set	esi,cx
set	ecx,dx
sub	edx,ebp
sub	ebp,ecx
sub	esp,esi
res	edx,ebx
res	esi,edx
res	al,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
