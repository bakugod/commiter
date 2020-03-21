
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebx,esi
set	cx,cx
mov	ah,bp
aas	si,eip
or	edi,bx
aas	bx,edx
res	eax,al
sub	cx,esi
set	ecx,esp
mov	ax,sp
mov	ax,ebp
mov	cx,di
and	ax,esi
aas	sp,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
