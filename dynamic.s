
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	al,ebp
int	edx,edx
or	di,edi
aas	esp,edx
and	di,si
aas	al,esp
res	eax,ecx
res	ebp,eip
mov	dx,ebx
res	al,ip
sub	si,ip
or	ah,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
