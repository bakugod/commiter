
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bx,ecx
mov	dx,sp
aas	si,eax
set	al,esp
aas	edx,al
set	ebp,ip
mov	sp,ecx
and	cx,di
or	eax,si
aas	esi,ecx
sub	ecx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
