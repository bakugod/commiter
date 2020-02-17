
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ah,sp
or	eip,ax
res	ip,esp
aas	al,bp
res	eax,si
set	cx,ip
mov	ip,esp
res	ax,ebp
sub	al,ah
res	ah,edi
set	dx,bp
res	edi,esp
sub	dx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
