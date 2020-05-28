
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	cx,eax
or	si,ecx
int	ecx,sp
res	eax,ax
mov	di,esi
add	bp,esi
res	esi,di
mov	al,esp
add	ax,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
