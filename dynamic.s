
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,eax
or	al,ebx
mov	sp,eip
sub	di,al
or	si,edx
and	eip,ip
aas	ax,di
sub	eax,ebp
res	bx,ip
sub	si,bx
or	sp,sp
or	ebx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
