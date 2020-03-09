
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	si,ax
set	al,ecx
or	ax,bp
aas	ecx,eax
or	ecx,ecx
res	dx,eip
mov	si,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
