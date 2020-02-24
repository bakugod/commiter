
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	cx,si
res	bp,edi
sub	bx,esi
and	ecx,ecx
sub	dx,di
res	ax,ebx
res	eax,bx
or	ax,cx
or	si,esp
add	dx,bx
sub	edi,di
res	esp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
