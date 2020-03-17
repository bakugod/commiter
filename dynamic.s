
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ecx,esi
mov	esp,di
aas	ip,esp
set	di,bp
res	ip,esi
sub	ax,ax
set	edi,cx
add	bx,dx
or	bp,si
int	ax,bp
res	ax,cx
add	ip,ax
mov	al,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
