
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,ebx
int	ebx,ebx
or	ecx,ebx
aas	esp,cx
mov	eax,di
res	eax,eip
set	al,si
and	di,edx
add	ebx,sp
aas	edx,ebp
mov	eax,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
