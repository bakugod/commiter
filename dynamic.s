
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,cx
set	sp,edx
res	edi,edi
aas	edi,sp
int	ah,bx
or	eip,cx
set	eax,ecx
aas	esi,si
int	al,edx
add	eip,esp
aas	esi,edi
mov	cx,ip
mov	cx,bx
mov	eip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
