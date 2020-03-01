
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bp,cx
aas	ax,edi
aas	ax,bp
aas	eax,eax
res	ecx,al
and	ecx,ebx
sub	ip,eip
mov	sp,eip
res	ax,ax
set	ecx,edi
mov	ecx,ax
mov	ip,esi
set	edi,ebx
add	ecx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
