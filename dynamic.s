
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,ax
set	si,esp
aas	al,ebp
aas	ip,si
res	sp,dx
int	si,edx
int	eax,si
add	bp,ebx
res	ax,ebx
aas	edx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
