
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	di,esi
mov	eax,eax
add	ax,esi
mov	edi,ebp
or	si,di
int	eax,eip
int	ebp,ip
set	al,ecx
mov	ecx,ip
res	esp,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
