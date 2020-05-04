
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esi,edx
and	di,ebp
res	ebp,ip
and	ip,ip
aas	si,ax
mov	edi,dx
or	edx,ebp
mov	bx,bp
res	esp,esi
mov	esi,ebx
mov	sp,ip
or	sp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
