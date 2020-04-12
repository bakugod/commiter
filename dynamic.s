
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	dx,bx
and	eax,ecx
sub	bp,eax
or	ecx,bx
or	ax,ah
int	ah,esi
res	bp,ebx
res	cx,di
sub	sp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
