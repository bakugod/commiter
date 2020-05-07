
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,ax
mov	edx,ebx
or	edi,esi
and	esp,edi
int	ah,bx
add	ax,ebp
and	si,ebp
add	eip,eax
res	sp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
