
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esp,bx
aas	bx,eax
and	ebp,eax
aas	eip,eax
mov	ebp,ah
add	si,bp
sub	cx,bx
sub	bp,cx
res	esi,eip
res	sp,ecx
int	edi,di
or	cx,eax
or	ax,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
