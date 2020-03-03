
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	di,edx
int	bp,di
or	edi,esp
aas	bp,sp
or	ip,cx
aas	bp,ax
aas	esp,eax
int	di,ip
int	edx,esi
mov	ebx,sp
int	di,sp
set	ebx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
