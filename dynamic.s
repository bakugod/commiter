
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esi,dx
or	ebp,ebp
and	ax,al
and	sp,edx
mov	ecx,eip
sub	bp,edx
sub	esi,ah
res	cx,di
mov	ah,di
sub	al,al
mov	ecx,ebp
or	al,ah
aas	al,dx
aas	edi,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
