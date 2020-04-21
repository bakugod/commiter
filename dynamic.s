
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esi,bp
set	edi,eax
mov	al,bp
mov	bx,ip
res	esi,bx
set	bx,edi
set	ebp,ebp
aas	sp,edx
and	esi,bp
aas	ebx,di
sub	ip,sp
mov	ecx,si
add	ecx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
