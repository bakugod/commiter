
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bx,cx
and	edi,esi
add	edx,esi
set	sp,al
aas	eax,ax
res	esi,edi
int	esi,ax
mov	esi,bp
aas	di,edx
aas	si,sp
aas	ecx,edx
aas	ah,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
