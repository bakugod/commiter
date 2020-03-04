
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ax,ecx
res	eip,edx
sub	edx,ip
or	edi,ebp
aas	esp,edx
or	ax,ax
set	si,di
mov	ax,al
set	sp,eip
set	esp,edi
set	bx,cx
add	ebx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
