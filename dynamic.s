
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ecx,si
set	eip,esi
sub	eax,ecx
sub	si,cx
or	cx,ax
mov	ebp,eip
and	bp,bp
add	sp,ax
int	sp,ebp
mov	ah,esp
mov	eax,eip
aas	di,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
