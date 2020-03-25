
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esp,esi
mov	edx,ax
mov	di,eip
or	edi,sp
int	esp,bp
set	edi,eax
res	ebx,si
int	ip,si
aas	eip,eax
and	ecx,esp
int	edx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
