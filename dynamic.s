
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	dx,ip
aas	eax,si
int	ax,cx
res	sp,ah
int	cx,eip
int	bx,edx
sub	esi,ebx
mov	sp,eax
mov	bx,di
or	ah,ip
set	edi,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
