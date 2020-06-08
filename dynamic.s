
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	di,ebp
int	ebx,ip
set	bx,ecx
res	cx,di
mov	esi,dx
aas	eip,esp
aas	ah,ecx
mov	ah,ebp
mov	ebx,esi
mov	cx,ip
int	edi,eip
and	eax,esi
mov	eax,sp
set	ip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
