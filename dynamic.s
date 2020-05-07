
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	sp,eax
int	si,edx
add	ax,dx
or	eip,ax
mov	ip,eip
mov	di,si
add	esi,edx
mov	ax,edi
aas	al,cx
res	sp,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
