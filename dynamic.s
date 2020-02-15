
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esi,di
aas	si,ebp
res	eip,ebx
or	edi,esi
int	ecx,dx
sub	ebp,esi
aas	ebx,eip
sub	ax,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
