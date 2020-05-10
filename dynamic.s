
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esp,si
or	ecx,eax
mov	eip,bx
res	eax,eip
res	ax,eax
or	ip,ebx
or	ebp,ebp
res	edx,ax
mov	esi,si
aas	bx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
