
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,esp
and	si,edx
int	di,bp
aas	ecx,bx
set	di,edi
aas	sp,eax
or	ebx,ip
res	ah,edx
aas	ebp,eip
or	sp,cx
and	ah,al
aas	si,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
