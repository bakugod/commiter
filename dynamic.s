
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eax,eip
set	al,cx
mov	sp,edx
aas	eip,edx
or	eip,di
or	si,bp
set	ebp,ah
and	al,edx
sub	esp,al
aas	si,cx
mov	di,edi
and	esp,bp
sub	esi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
