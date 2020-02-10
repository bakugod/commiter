
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ip,sp
int	edi,si
set	cx,sp
res	ecx,di
add	bp,esi
set	eip,esi
add	eip,edi
or	si,sp
int	ebp,ecx
mov	edi,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
