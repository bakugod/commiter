
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edi,edx
or	ah,al
or	al,ip
or	ecx,ebx
mov	ebp,esp
sub	eax,al
sub	al,bx
set	ecx,ecx
and	cx,esi
res	al,bp
res	eip,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
