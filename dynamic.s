
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,eip
mov	ebx,cx
add	al,eip
int	edi,sp
mov	al,eip
and	si,esi
set	ebp,eax
or	eip,edi
set	esi,si
set	ecx,dx
mov	di,al
and	sp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
