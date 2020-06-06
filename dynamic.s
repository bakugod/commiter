
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebp,eip
int	ebx,eip
or	bx,cx
or	esp,ebx
add	edx,di
set	esi,cx
res	esi,di
res	ah,si
aas	esp,esi
mov	al,al
res	ebp,eip
set	eip,ax
aas	esi,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
