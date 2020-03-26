
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	eax,esp
or	esp,sp
set	ip,sp
int	bp,sp
int	ebx,esi
set	ah,edi
int	edx,ax
int	sp,eip
and	ah,sp
or	ax,bx
mov	eax,eax
aas	ax,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
