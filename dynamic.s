
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eax,ax
int	ah,ecx
aas	eip,ebp
and	ah,eip
add	ax,sp
aas	bx,eax
or	bp,al
int	edi,esp
int	ecx,edx
add	esi,esi
int	ecx,al
and	ecx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
