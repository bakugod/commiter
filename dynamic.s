
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esi,esp
mov	ah,sp
or	edx,eip
aas	ip,eax
sub	edx,al
int	ax,sp
or	esi,ebx
and	ebp,edx
res	dx,ecx
res	ax,ax
set	al,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
