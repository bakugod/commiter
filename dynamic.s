
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ip,bp
or	esp,esi
or	si,ah
aas	edi,ip
set	si,ax
res	al,di
mov	al,ebp
or	bp,ax
sub	bx,cx
set	dx,ip
sub	si,eax
set	cx,ebp
sub	ax,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
