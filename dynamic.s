
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebp,ecx
or	ebx,ah
aas	ah,edi
add	al,bx
aas	di,ebx
set	cx,eax
aas	cx,cx
mov	esp,ecx
set	ax,ebp
aas	esp,eip
int	bp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
