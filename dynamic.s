
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,esi
or	ah,si
set	al,esi
and	ecx,eax
set	ecx,ebx
res	eip,ip
aas	bp,ip
or	cx,al
add	ebx,ax
mov	di,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
