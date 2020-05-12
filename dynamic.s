
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,sp
sub	edx,al
set	ah,eax
or	ebp,di
and	cx,eip
sub	al,ecx
res	ip,di
int	eax,ebx
and	edx,bp
sub	al,ecx
aas	dx,esp
res	eax,cx
add	ip,ecx
aas	ebx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
