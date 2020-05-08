
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bp,ax
add	dx,al
set	sp,eax
or	eax,ip
add	sp,esi
mov	eax,bx
aas	ecx,si
int	eip,ecx
res	eip,ebx
add	ax,eax
res	esp,ax
int	edi,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
