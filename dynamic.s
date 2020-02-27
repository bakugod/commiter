
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bp,ecx
set	esi,al
set	al,eip
add	bx,eax
set	dx,cx
int	eax,edx
or	eip,bp
and	ah,eax
mov	di,ecx
add	si,ip
mov	edi,si
set	dx,bx
aas	dx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
