
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	cx,ax
aas	ip,ip
set	esi,edx
and	ebx,edx
res	si,esi
and	ebp,cx
and	eax,bp
int	al,al
and	al,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
