
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ah,edx
sub	eip,cx
mov	ecx,ebp
int	bp,ecx
aas	esi,bx
or	ah,al
add	bp,eax
set	dx,si
set	edi,esi
add	si,esi
aas	edi,di
mov	ax,bp
int	ecx,cx
res	ip,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
