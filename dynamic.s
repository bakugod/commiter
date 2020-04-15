
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebx,dx
mov	ebx,ecx
or	sp,ax
sub	al,dx
aas	si,edi
aas	edi,si
mov	edx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
