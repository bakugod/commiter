
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,edx
aas	dx,edi
set	ip,eax
set	edx,eip
aas	si,di
res	bx,eip
or	eip,ecx
and	di,ah
set	ebx,di
res	bx,ah
res	cx,eip
or	ah,edx
add	ah,ip
res	eip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
