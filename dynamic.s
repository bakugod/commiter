
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebp,sp
set	al,di
int	al,ip
res	dx,ip
res	sp,ebp
aas	esp,edi
mov	esi,al
res	ecx,dx
mov	dx,si
aas	esp,eax
set	ah,al
or	ecx,edi
aas	di,eax
or	si,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
