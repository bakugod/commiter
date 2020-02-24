
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebx,sp
aas	di,bx
set	al,bx
res	eax,edi
or	edx,bx
and	al,cx
mov	si,di
and	eax,al
or	eip,esi
int	ip,di
and	sp,ecx
set	eip,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
