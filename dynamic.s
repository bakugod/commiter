
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	si,ax
sub	bx,di
aas	edx,edx
aas	bp,bx
res	bx,bp
res	eax,ecx
set	si,bp
res	ax,bx
sub	ip,ecx
and	di,ip
or	si,ah
set	al,bx
int	esp,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
