
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebx,dx
or	si,esi
or	ax,ebx
or	bx,eip
res	si,dx
and	cx,edi
int	cx,ip
res	esi,si
set	edi,si
int	ebx,dx
aas	ecx,ebp
or	edx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
