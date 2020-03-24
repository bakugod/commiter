
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ah,sp
res	edi,edi
aas	ip,al
int	esp,cx
set	dx,ecx
or	dx,esp
aas	cx,si
res	ebx,ah
and	ebx,al
mov	di,cx
sub	cx,ecx
or	ebx,ebp
set	al,sp
res	cx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
