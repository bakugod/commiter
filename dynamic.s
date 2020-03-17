
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ah,sp
and	esp,ax
set	edx,esp
or	dx,esi
add	ebx,ip
aas	si,eax
res	cx,eax
aas	eax,ebp
or	ebx,esi
and	esi,edx
add	eax,edi
int	bp,cx
int	eax,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
