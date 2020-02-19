
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,esp
add	al,bp
sub	edi,ebp
res	al,eip
set	si,esp
or	edx,esp
sub	edx,ecx
aas	esi,si
and	sp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
