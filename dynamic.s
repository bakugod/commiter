
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ax,ecx
aas	cx,si
res	al,sp
res	eip,esi
mov	si,sp
int	eax,dx
mov	si,ebp
int	ecx,edx
set	eax,edi
or	ebx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
