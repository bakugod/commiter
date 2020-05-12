
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	sp,eax
or	ax,ip
set	ah,cx
or	di,ebp
or	si,bx
add	cx,cx
mov	ebx,bp
sub	esi,ecx
res	ax,bx
add	ax,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
