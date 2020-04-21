
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edx,ecx
or	bx,eip
or	eip,esp
res	dx,ip
mov	ecx,si
int	cx,si
aas	ebx,esp
or	sp,bp
mov	dx,eax
sub	cx,dx
set	edx,si
mov	ip,ebx
set	sp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
