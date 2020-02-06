
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	sp,edi
add	ecx,edi
add	bp,dx
add	al,ip
or	cx,ecx
mov	bx,ip
aas	ecx,bx
sub	edi,ecx
or	al,ebp
add	ip,edx
res	sp,cx
aas	eip,di
sub	ah,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
