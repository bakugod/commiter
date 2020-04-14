
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	al,bx
res	edx,edi
or	ax,bp
int	eax,eax
res	edi,eax
and	ebp,di
aas	ecx,eip
res	ebp,ip
int	esi,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
