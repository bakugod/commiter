
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,ebx
mov	ip,ecx
mov	esp,bx
sub	edx,cx
aas	eip,sp
res	esp,sp
res	bx,si
int	bx,ebx
aas	edi,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
