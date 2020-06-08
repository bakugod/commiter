
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,si
aas	sp,di
add	al,bp
res	esp,di
and	eax,ax
add	di,eip
aas	ebx,eax
add	eip,si
int	bp,si
aas	ah,edi
add	di,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
