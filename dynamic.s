
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esp,si
or	edi,esi
mov	eip,ax
res	ax,eip
set	ah,ebp
and	esp,si
int	ax,ah
aas	ax,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
